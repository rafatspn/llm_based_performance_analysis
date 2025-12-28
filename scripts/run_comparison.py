#!/usr/bin/env python3
"""
Run model comparison experiments and generate visualizations.

Usage:
    python run_comparison.py --samples 100
    python run_comparison.py --visualize  # Generate charts from saved results
"""

import argparse
import json
import subprocess
import sys
from pathlib import Path
from collections import defaultdict
import random

# Models to test
MODELS = [
    ("deepseek", "deepseek-chat"),
    ("openrouter", "x-ai/grok-code-fast-1"),
    ("openrouter", "qwen/qwen3-coder"),
]

RESULTS_DIR = Path(__file__).parent.parent / "results"
DATA_DIR = Path(__file__).parent.parent / "data"


def create_stratified_sample(input_path: Path, output_path: Path, n_samples: int = 100, seed: int = 42, balanced: bool = False):
    """Create a stratified sample ensuring coverage of different complexity classes."""
    with open(input_path) as f:
        data = json.load(f)

    samples = data["samples"]

    # Group by ground truth
    by_class = defaultdict(list)
    for s in samples:
        by_class[s["ground_truth"]].append(s)

    classes = sorted(by_class.keys(), key=lambda x: -len(by_class[x]))
    n_classes = len(classes)

    print(f"Total samples: {len(samples)}")
    print(f"Total classes: {n_classes}")

    random.seed(seed)
    selected = []

    if balanced:
        # Balanced sampling: try to get equal samples from each class
        min_per_class = max(1, n_samples // n_classes)

        # First pass: take min_per_class from each class (or all if less available)
        for cls in classes:
            available = by_class[cls]
            take = min(len(available), min_per_class)
            selected.extend(random.sample(available, take))

        # Second pass: if we need more, distribute remaining proportionally
        remaining = n_samples - len(selected)
        if remaining > 0:
            # Calculate how many more we can take from each class
            extra_available = {cls: len(by_class[cls]) - min_per_class for cls in classes}
            extra_available = {k: max(0, v) for k, v in extra_available.items()}
            total_extra = sum(extra_available.values())

            if total_extra > 0:
                for cls in classes:
                    if extra_available[cls] > 0 and remaining > 0:
                        # Proportional allocation
                        extra = min(
                            extra_available[cls],
                            max(1, int(remaining * extra_available[cls] / total_extra))
                        )
                        already_taken = [s for s in selected if s["ground_truth"] == cls]
                        pool = [s for s in by_class[cls] if s not in already_taken]
                        take = min(extra, len(pool), remaining)
                        if take > 0:
                            selected.extend(random.sample(pool, take))
                            remaining -= take
    else:
        # Original stratified sampling (top classes priority)
        top_classes = classes[:15]
        samples_per_class = max(1, n_samples // len(top_classes))

        for cls in top_classes:
            available = by_class[cls]
            n = min(samples_per_class, len(available))
            selected.extend(random.sample(available, n))

        remaining = n_samples - len(selected)
        if remaining > 0:
            all_remaining = [s for s in samples if s not in selected]
            selected.extend(random.sample(all_remaining, min(remaining, len(all_remaining))))

    # Shuffle and reassign IDs
    random.shuffle(selected)
    for i, s in enumerate(selected):
        s["id"] = i

    # Calculate distribution
    dist = defaultdict(int)
    for s in selected:
        dist[s["ground_truth"]] += 1

    # Save
    output_path.parent.mkdir(parents=True, exist_ok=True)
    with open(output_path, 'w') as f:
        json.dump({"samples": selected, "metadata": {
            "total": len(selected),
            "n_classes": len(dist),
            "balanced": balanced,
            "distribution": dict(dist)
        }}, f, indent=2)

    # Print distribution
    print(f"\n{'='*70}")
    print(f"Created {'BALANCED' if balanced else 'STRATIFIED'} sample: {len(selected)} samples")
    print(f"Classes covered: {len(dist)} / {n_classes}")
    print(f"{'='*70}")
    print(f"{'Class':<55} {'Count':>6} {'Available':>10}")
    print(f"{'-'*70}")
    for cls in sorted(dist.keys(), key=lambda x: -dist[x]):
        print(f"{cls:<55} {dist[cls]:>6} / {len(by_class[cls]):>6}")
    print(f"{'='*70}")

    return output_path


def run_evaluation(provider: str, model: str, input_path: Path, output_path: Path):
    """Run evaluation for a single model."""
    cmd = [
        sys.executable, "scripts/evaluate_llm.py",
        "--provider", provider,
        "--model", model,
        "--input", str(input_path),
        "--output", str(output_path),
        "--limit", "0",  # Use all samples in input
        "--no-few-shot",
    ]

    print(f"\n{'='*60}")
    print(f"Running: {model}")
    print(f"{'='*60}")

    result = subprocess.run(cmd, capture_output=False)
    return result.returncode == 0


def load_results(results_dir: Path) -> dict:
    """Load all result files."""
    results = {}
    for f in results_dir.glob("*.json"):
        if f.name.startswith("comparison_"):
            continue
        with open(f) as fp:
            data = json.load(fp)
            model = data.get("model", f.stem)
            results[model] = data
    return results


def generate_comparison(results: dict, output_path: Path):
    """Generate comparison summary."""
    summary = {
        "models": [],
        "by_class": defaultdict(dict),
    }

    for model, data in results.items():
        acc = data.get("accuracy", 0)
        total = len(data.get("results", []))
        correct = sum(1 for r in data.get("results", []) if r.get("correct"))

        summary["models"].append({
            "model": model,
            "accuracy": acc,
            "correct": correct,
            "total": total,
        })

        # Per-class accuracy
        by_gt = defaultdict(lambda: {"correct": 0, "total": 0})
        for r in data.get("results", []):
            gt = r.get("ground_truth", "unknown")
            by_gt[gt]["total"] += 1
            if r.get("correct"):
                by_gt[gt]["correct"] += 1

        for gt, counts in by_gt.items():
            summary["by_class"][gt][model] = {
                "correct": counts["correct"],
                "total": counts["total"],
                "accuracy": counts["correct"] / counts["total"] * 100 if counts["total"] > 0 else 0
            }

    # Sort models by accuracy
    summary["models"].sort(key=lambda x: -x["accuracy"])

    with open(output_path, 'w') as f:
        json.dump(summary, f, indent=2)

    print(f"\nComparison saved to {output_path}")
    return summary


def print_summary(summary: dict):
    """Print summary table."""
    print("\n" + "=" * 70)
    print("MODEL COMPARISON RESULTS")
    print("=" * 70)
    print(f"{'Model':<45} {'Accuracy':>10} {'Correct':>10}")
    print("-" * 70)

    for m in summary["models"]:
        print(f"{m['model']:<45} {m['accuracy']:>9.1f}% {m['correct']:>5}/{m['total']}")

    print("=" * 70)

    # Per-class breakdown for top classes
    print("\nPER-CLASS ACCURACY (Top 5 classes):")
    print("-" * 70)

    classes = sorted(summary["by_class"].keys(),
                     key=lambda x: -sum(d["total"] for d in summary["by_class"][x].values()))[:5]

    for cls in classes:
        print(f"\n{cls}:")
        for model, data in summary["by_class"][cls].items():
            short_model = model.split("/")[-1][:20]
            print(f"  {short_model:<20}: {data['accuracy']:>5.1f}% ({data['correct']}/{data['total']})")


def generate_charts(summary: dict, output_dir: Path):
    """Generate visualization charts."""
    try:
        import matplotlib.pyplot as plt
        import numpy as np
    except ImportError:
        print("matplotlib not installed. Run: pip install matplotlib")
        return

    output_dir.mkdir(parents=True, exist_ok=True)

    # 1. Overall accuracy bar chart
    fig, ax = plt.subplots(figsize=(10, 6))
    models = [m["model"].split("/")[-1][:25] for m in summary["models"]]
    accuracies = [m["accuracy"] for m in summary["models"]]

    bars = ax.barh(models, accuracies, color='steelblue')
    ax.set_xlabel('Accuracy (%)')
    ax.set_title('Model Comparison: Complexity Prediction Accuracy')
    ax.set_xlim(0, 100)

    for bar, acc in zip(bars, accuracies):
        ax.text(bar.get_width() + 1, bar.get_y() + bar.get_height()/2,
                f'{acc:.1f}%', va='center')

    plt.tight_layout()
    plt.savefig(output_dir / 'accuracy_comparison.png', dpi=150)
    print(f"Saved: {output_dir / 'accuracy_comparison.png'}")

    # 2. Per-class heatmap
    classes = sorted(summary["by_class"].keys(),
                     key=lambda x: -sum(d["total"] for d in summary["by_class"][x].values()))[:8]
    model_names = [m["model"].split("/")[-1][:15] for m in summary["models"]]

    matrix = []
    for cls in classes:
        row = []
        for m in summary["models"]:
            model_key = m["model"]
            if model_key in summary["by_class"][cls]:
                row.append(summary["by_class"][cls][model_key]["accuracy"])
            else:
                row.append(0)
        matrix.append(row)

    fig, ax = plt.subplots(figsize=(12, 8))
    im = ax.imshow(matrix, cmap='RdYlGn', aspect='auto', vmin=0, vmax=100)

    ax.set_xticks(range(len(model_names)))
    ax.set_xticklabels(model_names, rotation=45, ha='right')
    ax.set_yticks(range(len(classes)))
    ax.set_yticklabels([c[:30] for c in classes])

    # Add text annotations
    for i in range(len(classes)):
        for j in range(len(model_names)):
            text = ax.text(j, i, f'{matrix[i][j]:.0f}',
                          ha='center', va='center', color='black', fontsize=9)

    ax.set_title('Per-Class Accuracy (%)')
    plt.colorbar(im, ax=ax, label='Accuracy %')
    plt.tight_layout()
    plt.savefig(output_dir / 'per_class_heatmap.png', dpi=150)
    print(f"Saved: {output_dir / 'per_class_heatmap.png'}")

    plt.close('all')


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--samples", type=int, default=100, help="Number of samples to test")
    parser.add_argument("--balanced", action="store_true", help="Use balanced sampling (equal per class)")
    parser.add_argument("--visualize", action="store_true", help="Only generate visualizations")
    parser.add_argument("--preview", action="store_true", help="Only preview sampling distribution, don't run tests")
    parser.add_argument("--seed", type=int, default=42)
    args = parser.parse_args()

    RESULTS_DIR.mkdir(parents=True, exist_ok=True)

    if args.visualize:
        # Only generate charts from existing results
        results = load_results(RESULTS_DIR)
        if not results:
            print("No results found. Run evaluations first.")
            return
        summary = generate_comparison(results, RESULTS_DIR / "comparison_summary.json")
        print_summary(summary)
        generate_charts(summary, RESULTS_DIR / "charts")
        return

    # Load data - use all data if --all-data flag, otherwise just test set
    dataset_dir = DATA_DIR / "dataset"

    if not dataset_dir.exists():
        print(f"Dataset not found: {dataset_dir}")
        print("Run: python scripts/generate_dataset.py --case all --split --output data/dataset/")
        return

    # Combine all datasets for larger sample pool
    all_samples = []
    for split in ["train.json", "val.json", "test.json"]:
        path = dataset_dir / split
        if path.exists():
            with open(path) as f:
                all_samples.extend(json.load(f)["samples"])

    # Save combined data temporarily
    combined_input = RESULTS_DIR / "combined_data.json"
    with open(combined_input, 'w') as f:
        json.dump({"samples": all_samples}, f)

    stratified_input = RESULTS_DIR / "stratified_sample.json"
    create_stratified_sample(combined_input, stratified_input, n_samples=args.samples, seed=args.seed, balanced=args.balanced)

    if args.preview:
        print("\n[Preview mode] Sampling complete. No model evaluation run.")
        return

    # Run evaluations
    for provider, model in MODELS:
        safe_name = model.replace("/", "_").replace(":", "_").replace("-", "_")
        output_path = RESULTS_DIR / f"{safe_name}.json"

        success = run_evaluation(provider, model, stratified_input, output_path)
        if not success:
            print(f"Warning: {model} evaluation may have failed")

    # Generate comparison
    results = load_results(RESULTS_DIR)
    summary = generate_comparison(results, RESULTS_DIR / "comparison_summary.json")
    print_summary(summary)
    generate_charts(summary, RESULTS_DIR / "charts")


if __name__ == "__main__":
    main()
