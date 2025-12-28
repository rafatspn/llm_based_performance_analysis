#!/usr/bin/env python3
"""
Generate JSON dataset for LLM complexity prediction.

This script processes case_1 and case_2 data to create a structured dataset
suitable for LLM training and evaluation.

Usage:
    python generate_dataset.py --case 2 --output dataset.json
    python generate_dataset.py --case 2 --split --output dataset/
    python generate_dataset.py --case all --output full_dataset.json
"""

import argparse
import json
import re
import random
from pathlib import Path
from typing import Dict, List, Optional, Tuple
from dataclasses import dataclass, asdict

# Project paths
PROJECT_ROOT = Path(__file__).parent.parent
DATA_DIR = PROJECT_ROOT / "data"


@dataclass
class Sample:
    """A single training/test sample."""
    id: int
    case: str
    code_id: str
    call_path: str
    function_name: str
    ground_truth: str
    source_file: Optional[str] = None


def extract_function_name(call_path: str) -> str:
    """Extract the leaf function name from a call path."""
    # Get the last part of the call path
    parts = call_path.split('->')
    if not parts:
        return ""

    last_part = parts[-1].strip()

    # Extract just the function name (remove parameters)
    match = re.match(r'^([^(]+)', last_part)
    if match:
        return match.group(1).strip()
    return last_part


def normalize_complexity(complexity: str) -> str:
    """Normalize complexity string (fix typos, standardize format)."""
    # Fix known typos
    complexity = complexity.strip()
    if complexity == "constat":
        complexity = "constant"
    return complexity


def load_case1_data() -> List[Sample]:
    """Load data from case_1 (BC_MPI benchmark)."""
    case1_dir = DATA_DIR / "case_1"

    call_path_file = case1_dir / "call_path.txt"
    complexity_file = case1_dir / "complexity_bb.txt"

    if not call_path_file.exists() or not complexity_file.exists():
        print(f"Warning: Case 1 data not found at {case1_dir}")
        return []

    with open(call_path_file, 'r') as f:
        call_paths = [line.strip() for line in f if line.strip()]

    with open(complexity_file, 'r') as f:
        complexities = [line.strip() for line in f if line.strip()]

    if len(call_paths) != len(complexities):
        print(f"Warning: Mismatch in case_1: {len(call_paths)} paths vs {len(complexities)} complexities")
        min_len = min(len(call_paths), len(complexities))
        call_paths = call_paths[:min_len]
        complexities = complexities[:min_len]

    samples = []
    for i, (cp, cx) in enumerate(zip(call_paths, complexities)):
        samples.append(Sample(
            id=i,
            case="case_1",
            code_id="BC_MPI",
            call_path=cp,
            function_name=extract_function_name(cp),
            ground_truth=normalize_complexity(cx),
            source_file="BC_MPI.cpp"
        ))

    return samples


def load_case2_data() -> List[Sample]:
    """Load data from case_2 (MPI Kernel Experiments)."""
    case2_dir = DATA_DIR / "case_2"
    output_dir = case2_dir / "OUTPUT"

    if not output_dir.exists():
        print(f"Warning: Case 2 OUTPUT not found. Run: cd data/case_2 && for f in experiment_*.tar.xz; do tar -xf \"$f\"; done")
        return []

    samples = []
    sample_id = 0

    for code_dir in sorted(output_dir.iterdir()):
        if not code_dir.is_dir() or not code_dir.name.startswith("CODE_"):
            continue

        code_id = code_dir.name  # e.g., "CODE_1"
        code_num = code_id.split("_")[1]  # e.g., "1"

        call_path_file = code_dir / "call_path.txt"
        complexity_file = code_dir / "complexity.txt"

        if not call_path_file.exists() or not complexity_file.exists():
            print(f"Warning: Missing files in {code_dir}")
            continue

        with open(call_path_file, 'r') as f:
            call_paths = [line.strip() for line in f if line.strip()]

        with open(complexity_file, 'r') as f:
            complexities = [line.strip() for line in f if line.strip()]

        if len(call_paths) != len(complexities):
            print(f"Warning: Mismatch in {code_id}: {len(call_paths)} paths vs {len(complexities)} complexities")
            min_len = min(len(call_paths), len(complexities))
            call_paths = call_paths[:min_len]
            complexities = complexities[:min_len]

        source_file = f"code_{code_num}.cpp"

        for cp, cx in zip(call_paths, complexities):
            samples.append(Sample(
                id=sample_id,
                case="case_2",
                code_id=code_id,
                call_path=cp,
                function_name=extract_function_name(cp),
                ground_truth=normalize_complexity(cx),
                source_file=source_file
            ))
            sample_id += 1

    return samples


def get_complexity_distribution(samples: List[Sample]) -> Dict[str, int]:
    """Get distribution of complexity classes."""
    dist = {}
    for s in samples:
        dist[s.ground_truth] = dist.get(s.ground_truth, 0) + 1
    return dict(sorted(dist.items(), key=lambda x: -x[1]))


def split_dataset(
    samples: List[Sample],
    train_ratio: float = 0.8,
    val_ratio: float = 0.1,
    test_ratio: float = 0.1,
    seed: int = 42
) -> Tuple[List[Sample], List[Sample], List[Sample]]:
    """Split dataset into train/val/test sets."""
    assert abs(train_ratio + val_ratio + test_ratio - 1.0) < 1e-6

    random.seed(seed)
    shuffled = samples.copy()
    random.shuffle(shuffled)

    n = len(shuffled)
    train_end = int(n * train_ratio)
    val_end = train_end + int(n * val_ratio)

    train = shuffled[:train_end]
    val = shuffled[train_end:val_end]
    test = shuffled[val_end:]

    # Re-assign IDs within each split
    for i, s in enumerate(train):
        s.id = i
    for i, s in enumerate(val):
        s.id = i
    for i, s in enumerate(test):
        s.id = i

    return train, val, test


def save_dataset(samples: List[Sample], output_path: Path, include_stats: bool = True):
    """Save dataset to JSON file."""
    data = {
        "samples": [asdict(s) for s in samples]
    }

    if include_stats:
        data["metadata"] = {
            "total_samples": len(samples),
            "complexity_distribution": get_complexity_distribution(samples),
            "cases": list(set(s.case for s in samples)),
            "code_ids": list(set(s.code_id for s in samples))
        }

    output_path.parent.mkdir(parents=True, exist_ok=True)
    with open(output_path, 'w') as f:
        json.dump(data, f, indent=2)

    print(f"Saved {len(samples)} samples to {output_path}")


def main():
    parser = argparse.ArgumentParser(description="Generate JSON dataset for LLM complexity prediction")
    parser.add_argument("--case", type=str, default="all", choices=["1", "2", "all"],
                        help="Which case to process (1, 2, or all)")
    parser.add_argument("--output", type=str, default="dataset.json",
                        help="Output file or directory (if --split)")
    parser.add_argument("--split", action="store_true",
                        help="Split into train/val/test sets")
    parser.add_argument("--train-ratio", type=float, default=0.8,
                        help="Training set ratio (default: 0.8)")
    parser.add_argument("--val-ratio", type=float, default=0.1,
                        help="Validation set ratio (default: 0.1)")
    parser.add_argument("--test-ratio", type=float, default=0.1,
                        help="Test set ratio (default: 0.1)")
    parser.add_argument("--seed", type=int, default=42,
                        help="Random seed for splitting")
    parser.add_argument("--stats", action="store_true",
                        help="Print dataset statistics")

    args = parser.parse_args()

    # Load data
    samples = []

    if args.case in ["1", "all"]:
        case1_samples = load_case1_data()
        samples.extend(case1_samples)
        print(f"Loaded {len(case1_samples)} samples from case_1")

    if args.case in ["2", "all"]:
        case2_samples = load_case2_data()
        samples.extend(case2_samples)
        print(f"Loaded {len(case2_samples)} samples from case_2")

    if not samples:
        print("No samples loaded!")
        return

    print(f"\nTotal samples: {len(samples)}")

    # Print statistics
    if args.stats:
        print("\n=== Dataset Statistics ===")
        dist = get_complexity_distribution(samples)
        print(f"Complexity classes: {len(dist)}")
        print("\nTop 10 classes:")
        for cx, count in list(dist.items())[:10]:
            print(f"  {cx}: {count} ({100*count/len(samples):.1f}%)")

    # Save dataset
    output_path = Path(args.output)

    if args.split:
        # Split and save to separate files
        train, val, test = split_dataset(
            samples,
            train_ratio=args.train_ratio,
            val_ratio=args.val_ratio,
            test_ratio=args.test_ratio,
            seed=args.seed
        )

        output_dir = output_path if output_path.suffix == "" else output_path.parent
        output_dir.mkdir(parents=True, exist_ok=True)

        save_dataset(train, output_dir / "train.json")
        save_dataset(val, output_dir / "val.json")
        save_dataset(test, output_dir / "test.json")

        print(f"\nSplit: train={len(train)}, val={len(val)}, test={len(test)}")
    else:
        save_dataset(samples, output_path)


if __name__ == "__main__":
    main()
