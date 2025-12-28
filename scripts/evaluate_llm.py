#!/usr/bin/env python3
"""
Evaluate LLM on complexity prediction task with multi-model support.

Usage:
    # DeepSeek direct API
    python evaluate_llm.py --provider deepseek --model deepseek-chat --limit 50

    # OpenRouter (multiple models)
    python evaluate_llm.py --provider openrouter --model deepseek/deepseek-chat --limit 50
    python evaluate_llm.py --provider openrouter --model qwen/qwen-2.5-coder-32b-instruct --limit 50
"""

import argparse
import json
import os
import re
import time
from pathlib import Path
from dataclasses import dataclass
from typing import Optional

from dotenv import load_dotenv
from openai import OpenAI

load_dotenv()


# === Few-Shot Examples ===

FEW_SHOT_EXAMPLES = """
Example 1:
Call path: main->compute->MPI_Bcast
Code:
```cpp
void compute(int n, int p) {
    MPI_Bcast(data, n, MPI_INT, 0, MPI_COMM_WORLD);
}
```
Complexity: n^(1)

Example 2:
Call path: main->process->nested_loop
Code:
```cpp
void nested_loop(int n) {
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            result += data[i][j];
        }
    }
}
```
Complexity: n^(2)

Example 3:
Call path: main->init->MPI_Comm_rank
Code:
```cpp
void init(int* rank) {
    MPI_Comm_rank(MPI_COMM_WORLD, rank);
}
```
Complexity: constant

Example 4:
Call path: main->solve->sqrt_loop
Code:
```cpp
void sqrt_loop(int n) {
    for (int i = 0; i < sqrt(n); i++) {
        for (int j = 0; j < n; j++) {
            compute(i, j);
        }
    }
}
```
Complexity: n^(3/2)

Example 5:
Call path: main->gather->MPI_Allgather
Code:
```cpp
void gather(int n, int p) {
    MPI_Allgather(local, n/p, MPI_INT, global, n/p, MPI_INT, MPI_COMM_WORLD);
}
```
Complexity: p^(1) * n^(1)
"""

SYSTEM_PROMPT = """You are an expert in analyzing time complexity of parallel MPI programs.

Given source code and a call path, predict the time complexity in terms of:
- n: problem size
- p: number of MPI processes

Rules:
1. Analyze loops to determine complexity (single loop = n^(1), nested = n^(2), sqrt bound = n^(1/2))
2. MPI collectives like Bcast, Scatter typically depend on data size (n) and/or processes (p)
3. Simple operations without loops are constant
4. Consider the ENTIRE call path context

Output ONLY the complexity expression. Examples: "n^(1)", "constant", "p^(1) * n^(1)", "n^(3/2)"
"""

USER_PROMPT_TEMPLATE = """Here are some examples:
{examples}

Now analyze this:
Call path: {call_path}
Code:
```cpp
{source_code}
```

Output only the complexity:"""


# === Provider Configuration ===

PROVIDERS = {
    "deepseek": {
        "base_url": "https://api.deepseek.com",
        "api_key_env": "DEEPSEEK_API_KEY",
        "default_model": "deepseek-chat",
    },
    "openrouter": {
        "base_url": "https://openrouter.ai/api/v1",
        "api_key_env": "OPENROUTER_API_KEY",
        "default_model": "deepseek/deepseek-chat",
    },
}


# === Source Code Extraction ===

SOURCE_CACHE: dict = {}


def load_source(sample: dict, data_dir: Path) -> str:
    """Load source file with caching."""
    src = sample.get("source_file", "")
    if not src or src in SOURCE_CACHE:
        return SOURCE_CACHE.get(src, "")

    path = data_dir / ("case_1" if sample["case"] == "case_1" else "case_2") / src
    if path.exists():
        SOURCE_CACHE[src] = path.read_text()
    return SOURCE_CACHE.get(src, "")


def extract_function(code: str, name: str) -> str:
    """Extract function body by name."""
    clean = re.sub(r'\(.*\)', '', name).strip()
    if not clean or clean.startswith('MPI_') or clean in ['main']:
        return ""

    pattern = rf'(\w+[\s\*&]+)?{re.escape(clean)}\s*\([^)]*\)\s*\{{'
    match = re.search(pattern, code)
    if not match:
        return ""

    start, braces, end = match.start(), 0, match.start()
    for i, c in enumerate(code[start:], start):
        if c == '{':
            braces += 1
        elif c == '}':
            braces -= 1
            if braces == 0:
                end = i + 1
                break
    return code[start:end]


def get_code_snippet(sample: dict, data_dir: Path) -> str:
    """Get relevant code for a sample."""
    full = load_source(sample, data_dir)
    if not full:
        return ""

    if sample["case"] == "case_1":
        return full  # Small enough

    # Extract functions from call path
    parts = sample.get("call_path", "").split('->')
    funcs, seen = [], set()

    for p in parts:
        name = re.sub(r'\(.*\)', '', p).strip()
        if name not in seen and not name.startswith(('MPI_', 'bg_')) and name != 'main':
            seen.add(name)
            if (f := extract_function(full, name)):
                funcs.append(f)

    return '\n\n'.join(funcs)


# === Complexity Matching ===

def normalize(s: str) -> str:
    """Normalize complexity for comparison."""
    s = s.lower().strip()
    s = re.sub(r'\s+', '', s)
    s = re.sub(r'\^(\d+)(?!\))', r'^(\1)', s)  # n^2 -> n^(2)
    for old, new in [('o(', ''), (')', ''), ('θ', ''), ('log2', 'log'), ('logn', 'log(n)')]:
        s = s.replace(old, new)
    return s


def is_match(pred: str, truth: str) -> bool:
    return normalize(pred) == normalize(truth)


# === LLM Client ===

@dataclass
class Config:
    provider: str = "deepseek"
    model: str = "deepseek-chat"
    temperature: float = 0.0
    max_tokens: int = 50
    few_shot: bool = True


class LLMClient:
    def __init__(self, cfg: Config):
        prov = PROVIDERS[cfg.provider]
        api_key = os.environ.get(prov["api_key_env"])
        if not api_key:
            raise ValueError(f"Set {prov['api_key_env']} environment variable")

        self.client = OpenAI(api_key=api_key, base_url=prov["base_url"])
        self.cfg = cfg

    def predict(self, call_path: str, code: str) -> Optional[str]:
        try:
            examples = FEW_SHOT_EXAMPLES if self.cfg.few_shot else ""
            content = USER_PROMPT_TEMPLATE.format(
                examples=examples, call_path=call_path,
                source_code=code if code else "Not available"
            )
            resp = self.client.chat.completions.create(
                model=self.cfg.model,
                messages=[
                    {"role": "system", "content": SYSTEM_PROMPT},
                    {"role": "user", "content": content}
                ],
                temperature=self.cfg.temperature,
                max_tokens=self.cfg.max_tokens,
            )
            return resp.choices[0].message.content.strip()
        except Exception as e:
            print(f"API error: {e}")
            return None


# === Evaluation ===

def evaluate(input_path: Path, limit: int, output_path: Optional[Path], cfg: Config):
    with open(input_path) as f:
        samples = json.load(f)["samples"][:limit] if limit else json.load(f)["samples"]

    print(f"Evaluating {len(samples)} samples | Provider: {cfg.provider} | Model: {cfg.model}")
    print(f"Few-shot: {cfg.few_shot}")
    print("-" * 60)

    data_dir = Path(__file__).parent.parent / "data"
    client = LLMClient(cfg)
    results, correct = [], 0

    for i, s in enumerate(samples):
        code = get_code_snippet(s, data_dir)
        pred = client.predict(s["call_path"], code)

        if not pred:
            time.sleep(1)
            continue

        match = is_match(pred, s["ground_truth"])
        correct += match
        acc = correct / len(results + [1]) * 100

        results.append({
            "id": s["id"], "ground_truth": s["ground_truth"],
            "prediction": pred, "correct": match
        })

        mark = "✓" if match else "✗"
        print(f"[{i+1}/{len(samples)}] {mark} {acc:.1f}% | GT: {s['ground_truth']:<30} | Pred: {pred}")
        time.sleep(0.1)

    acc = correct / len(results) * 100 if results else 0
    print("=" * 60)
    print(f"Final: {correct}/{len(results)} = {acc:.2f}%")
    print("=" * 60)

    if output_path:
        json.dump({"model": cfg.model, "accuracy": acc, "results": results},
                  open(output_path, 'w'), indent=2)
        print(f"Saved to {output_path}")


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--input", default="data/dataset/test.json")
    p.add_argument("--output", default=None)
    p.add_argument("--limit", type=int, default=50)
    p.add_argument("--provider", default="deepseek", choices=["deepseek", "openrouter"])
    p.add_argument("--model", default=None)
    p.add_argument("--no-few-shot", action="store_true")
    args = p.parse_args()

    model = args.model or PROVIDERS[args.provider]["default_model"]
    cfg = Config(provider=args.provider, model=model, few_shot=not args.no_few_shot)

    evaluate(Path(args.input), args.limit, Path(args.output) if args.output else None, cfg)


if __name__ == "__main__":
    main()
