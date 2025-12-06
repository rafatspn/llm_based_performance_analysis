import argparse
import csv
import random
from collections import defaultdict
from pathlib import Path
from typing import List, Dict, Optional
import json

import torch
from datasets import load_dataset, concatenate_datasets
from transformers import AutoTokenizer, AutoModelForCausalLM

try:
    from tqdm import tqdm
except ImportError:
    tqdm = lambda x, **kwargs: x 

import re

FINAL_LABEL_RE = re.compile(
    r"final\s+label\s*(?:[:\-]|is)?\s*([a-z0-9_()+*\s^!/\.]+)",
    re.IGNORECASE,
)

GENERIC_LABEL_RE = re.compile(
    r"\blabel\s*(?:[:\-]|is)?\s*([a-z0-9_()+*\s^!/\.]+)",
    re.IGNORECASE,
)

# labels
ALL_COMPLEXITY_LABELS = [
    "linear",
    "logn",
    "nlogn",
    "quadratic",
    "cubic",
    "constant",
    "np",
]

# direct hugging face download won't work cause the dataaset is saved in csv filees
def load_tasty_dataset():
    cpp_url = (
        "https://huggingface.co/datasets/Banana-Leopard/TASTY/"
        "resolve/main/cpp_data_clean.csv"
    )
    py_url = (
        "https://huggingface.co/datasets/Banana-Leopard/TASTY/"
        "resolve/main/python_data_clean.csv"
    )

    ds_cpp = load_dataset("csv", data_files=cpp_url)["train"]
    ds_py = load_dataset("csv", data_files=py_url)["train"]

    ds = concatenate_datasets([ds_cpp, ds_py])

    keep_cols = ["code", "time_complexity"]
    drop_cols = [c for c in ds.column_names if c not in keep_cols]
    if drop_cols:
        ds = ds.remove_columns(drop_cols)

    return ds


def balanced_subsample(ds, n_per_class: int = 20, seed: int = 42):
    rng = random.Random(seed)
    labels = ds["time_complexity"]

    idx_by_label: Dict[str, List[int]] = defaultdict(list)
    for idx, lbl in enumerate(labels):
        idx_by_label[lbl].append(idx)

    selected_indices: List[int] = []
    for lbl, idxs in idx_by_label.items():
        idxs_copy = list(idxs)
        rng.shuffle(idxs_copy)
        take = min(n_per_class, len(idxs_copy))
        selected_indices.extend(idxs_copy[:take])

    selected_indices = sorted(selected_indices)
    subset = ds.select(selected_indices)

    return subset


def build_messages(code: str, label_options: List[str]) -> List[Dict[str, str]]:
    labels_str = "', '".join(label_options)
    system_prompt = (
        "You are an expert algorithm and complexity analyst.\n"
        "Your task is to determine the worst-case time complexity of a given code "
        "snippet with respect to input size n.\n"
        "Choose exactly ONE label from the following set:\n"
        f"'{labels_str}'.\n"
        "Rules:\n"
        "1. Think about loops, recursion, and calls, but DO NOT explain your reasoning.\n"
        "2. Respond with ONLY the label, exactly as written above (all lowercase), "
        "with no extra text."
    )

    user_prompt = (
        "Here is the code snippet:\n\n"
        "```code\n"
        f"{code}\n"
        "```\n\n"
        "What is its worst-case time complexity label?"
    )

    messages = [
        {"role": "system", "content": system_prompt},
        {"role": "user", "content": user_prompt},
    ]
    return messages

# def normalize_prediction(raw_text: str, allowed_labels: List[str]) -> Optional[str]:
#     if not raw_text:
#         return None

#     text = raw_text.strip()

#     big_o_map = {
#         # constant
#         "1": "constant",
#         "n^0": "constant",
#         "n0": "constant",
#         "constant": "constant",
#         # linear
#         "n": "linear",
#         "linear": "linear",
#         # log n
#         "logn": "logn",
#         # n log n
#         "nlogn": "nlogn",
#         # quadratic
#         "n^2": "quadratic",
#         "n2": "quadratic",
#         "n**2": "quadratic",
#         "quadratic":  "quadratic",
#         # cubic
#         "n^3": "cubic",
#         "n3": "cubic",
#         "n**3": "cubic",  
#         "cubic": "cubic",  
#         # np (non-polynomial / exponential or worse)
#         "2^n": "np",
#         "2**n": "np",
#         "exp": "np",
#         "exponential": "np",
#         "n!": "np",
#         "factorial": "np",
#         "np": "np",
#     }

#     json_match = re.search(r"\{.*\}", text, flags=re.DOTALL)
#     if json_match:
#         json_str = json_match.group(0)
#         try:
#             obj = json.loads(json_str)
#             lbl = str(obj.get("label", "")).strip().lower()
#             # if lbl in allowed_labels:
#                 # return lbl
#             return big_o_map[lbl]
                
            
#         except Exception:
#             pass 

#     lowered = text.lower().strip(" .;,:!?\n\t")
#     if lowered:
#         first_token = lowered.split()[0]
#         if first_token in allowed_labels:
#             return first_token

#     for lbl in sorted(allowed_labels, key=len, reverse=True):
#         if re.search(rf"\b{re.escape(lbl)}\b", lowered):
#             return lbl

#     return None



def normalize_prediction(raw_text: str, allowed_labels: List[str]) -> Optional[str]:
    allowed_set = set(allowed_labels)

    text = raw_text.strip().lower()

    if text in allowed_set:
        return text

    for prefix in [
        "time complexity is",
        "time complexity:",
        "the time complexity is",
        "complexity:",
        "complexity is",
    ]:
        if text.startswith(prefix):
            text = text[len(prefix) :].strip()

    if text.endswith("."):
        text = text[:-1].strip()

    compact = text.replace(" ", "")

    if compact.startswith("o(") and compact.endswith(")"):
        compact = compact[2:-1]

    compact = (
        compact.replace("log(n)", "logn")
        .replace("logn", "logn")
        .replace("nlog(n)", "nlogn")
        .replace("nlogn", "nlogn")
    )

    if compact in allowed_set:
        return compact

    # mapping
    big_o_map = {
        # constant
        "1": "constant",
        "n^0": "constant",
        "n0": "constant",
        "constant": "constant",
        # linear
        "n": "linear",
        "linear": "linear",
        # log n
        "logn": "logn",
        # n log n
        "nlogn": "nlogn",
        # quadratic
        "n^2": "quadratic",
        "n2": "quadratic",
        "n**2": "quadratic",
        "quadratic":  "quadratic",
        # cubic
        "n^3": "cubic",
        "n3": "cubic",
        "n**3": "cubic",  
        "cubic": "cubic",  
        # np (non-polynomial / exponential or worse)
        "2^n": "np",
        "2**n": "np",
        "exp": "np",
        "exponential": "np",
        "n!": "np",
        "factorial": "np",
        "np": "np",
    }

    if compact in big_o_map and big_o_map[compact] in allowed_set:
        return big_o_map[compact]

    for lbl in allowed_labels:
        if lbl in compact:
            return lbl

    return None


def load_qwen(model_name: str = "Qwen/Qwen2.5-1.5B-Instruct", cache_dir: str = "/araf/time_complexity"):
    tokenizer = AutoTokenizer.from_pretrained(model_name)
    model = AutoModelForCausalLM.from_pretrained(
        model_name,
        torch_dtype="auto",
        device_map="auto"
    )
    model.eval()
    return tokenizer, model


def predict_label_for_example(tokenizer, model, code: str, label_options: List[str], max_new_tokens: int = 512) -> str:
    messages = build_messages(code, label_options)
    chat_text = tokenizer.apply_chat_template(
        messages,
        tokenize=False,
        add_generation_prompt=True,
    )

    inputs = tokenizer([chat_text], return_tensors="pt").to(model.device)

    with torch.no_grad():
        generated_ids = model.generate(
            **inputs,
            max_new_tokens=max_new_tokens,
            do_sample=False, 
        )

    new_tokens = generated_ids[:, inputs.input_ids.shape[1] :]
    out = tokenizer.batch_decode(new_tokens, skip_special_tokens=True)[0]

    return out.strip()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--num-per-class",
        type=int,
        default=20,
        help="Number of examples per time_complexity class to sample (max).",
    )
    parser.add_argument(
        "--seed",
        type=int,
        default=42,
        help="Random seed for sampling.",
    )
    parser.add_argument(
        "--max-examples",
        type=int,
        default=None,
        help="Optional cap on total # of sampled examples (after per-class sampling).",
    )
    parser.add_argument(
        "--model-name",
        type=str,
        default="Qwen/Qwen2.5-0.5B-Instruct",
        help="HF model name for Qwen (smallest instruct model).",
    )
    parser.add_argument(
        "--out-csv",
        type=str,
        default="tasty_qwen_results.csv",
        help="Path to save per-example predictions as CSV.",
    )
    parser.add_argument(
        "--cache_dir",
        type=str,
        default="/araf/time_complexity",
        help="path_to_save_model_data",
    )

    args = parser.parse_args()

    print("Loading dataset")
    ds = load_tasty_dataset()

    dataset_labels = sorted(set(ds["time_complexity"]))
    print(f"Unique time compexities: {dataset_labels}")

    allowed_labels = [lbl for lbl in ALL_COMPLEXITY_LABELS if lbl in dataset_labels]
    for lbl in dataset_labels:
        if lbl not in allowed_labels:
            allowed_labels.append(lbl)

    subset = balanced_subsample(ds, n_per_class=args.num_per_class, seed=args.seed)

    if args.max_examples is not None and len(subset) > args.max_examples:
        subset = subset.select(range(args.max_examples))

    print(f"Total sampled examples: {len(subset)}")

    print("Loading Qwen model:", args.model_name)
    tokenizer, model = load_qwen(args.model_name, args.cache_dir)

    codes = subset["code"]
    gold_labels = subset["time_complexity"]

    preds_raw: List[str] = []
    preds_norm: List[Optional[str]] = []
    raw_explanation = []


    print("Running Qwen predictions...")
    for code in tqdm(codes):
        raw = predict_label_for_example(
            tokenizer, model, code, allowed_labels, max_new_tokens=1024
        )
        raw_explanation.append(raw)
        norm = normalize_prediction(raw, allowed_labels)
        preds_raw.append(raw)
        # try:
        #     act_pred = big_o_map[norm]
        # except:
        #     act_pred = norm
        preds_norm.append(norm)

    # Compute accuracy
    total = len(gold_labels)
    correct = 0
    unmatched = 0

    per_label_counts = defaultdict(int)
    per_label_correct = defaultdict(int)

    for gold, pred in zip(gold_labels, preds_norm):
        per_label_counts[gold] += 1
        if pred is None:
            unmatched += 1
            continue
        if pred == gold:
            correct += 1
            per_label_correct[gold] += 1

    accuracy = correct / total if total > 0 else 0.0

    print("\n=== Evaluation Results ===")
    print(f"Total examples:        {total}")
    print(f"Correct predictions:   {correct}")
    print(f"Unparseable outputs:   {unmatched}")
    print(f"Overall accuracy:      {accuracy:.3f}\n")

    print("Per-label accuracy:")
    for lbl in allowed_labels:
        if per_label_counts[lbl] == 0:
            continue
        acc_lbl = per_label_correct[lbl] / per_label_counts[lbl]
        print(
            f"  {lbl:10s}  "
            f"{per_label_correct[lbl]:3d}/{per_label_counts[lbl]:3d}  "
            f"({acc_lbl:.3f})"
        )

    # SAve results
    out_path = Path(f"{args.out_csv}_{args.model_name}.csv")
    out_path.parent.mkdir(parents=True, exist_ok=True)

    fieldnames = [
        "idx",
        "code",
        "gold_label",
        "pred_raw",
        "pred_norm",
        "correct",
        "explanation"
    ]

    with out_path.open("w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        for i, (code, gold, raw, norm) in enumerate(
            zip(codes, gold_labels, preds_raw, preds_norm)
        ):
            writer.writerow(
                {
                    "idx": i,
                    "code": code,
                    "gold_label": gold,
                    "pred_raw": raw,
                    "pred_norm": norm if norm is not None else "",
                    "correct": int(norm == gold) if norm is not None else 0,
                    "explanation": raw
                }
            )

    print(f"\nSaved per-example predictions to: {out_path.resolve()}")


if __name__ == "__main__":
    main()
