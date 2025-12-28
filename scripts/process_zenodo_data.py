#!/usr/bin/env python3
"""
Process Zenodo HPC benchmark data for LLM-based complexity analysis.

This script processes the downloaded Zenodo datasets:
- LULESH: Contains CUBE files (profile.cubex) with call paths
- RELeARN: Contains Extra-P text format with function measurements

Usage:
    python process_zenodo_data.py --list           # List available experiments
    python process_zenodo_data.py --parse-lulesh   # Parse LULESH CUBE files
    python process_zenodo_data.py --parse-relearn  # Parse RELeARN data
"""

import argparse
import os
import re
from pathlib import Path
from collections import defaultdict
from typing import Dict, List, Tuple, Optional

# Data directory
DATA_DIR = Path(__file__).parent.parent / "data" / "zenodo_benchmarks"


def list_lulesh_experiments() -> List[Dict]:
    """List all LULESH experiments with their parameters."""
    lulesh_dir = DATA_DIR / "lulesh"
    if not lulesh_dir.exists():
        print(f"LULESH directory not found: {lulesh_dir}")
        return []

    experiments = []
    pattern = re.compile(r"lulesh\.p(\d+)\.s(\d+)\.r(\d+)")

    for item in sorted(lulesh_dir.iterdir()):
        if item.is_dir():
            match = pattern.match(item.name)
            if match:
                experiments.append({
                    "name": item.name,
                    "path": item,
                    "processes": int(match.group(1)),
                    "size": int(match.group(2)),
                    "repetition": int(match.group(3)),
                    "cubex_path": item / "profile.cubex"
                })

    return experiments


def parse_relearn_data() -> Dict:
    """Parse RELeARN Extra-P format data."""
    relearn_file = DATA_DIR / "RELeARN" / "relearn_data.txt"
    if not relearn_file.exists():
        print(f"RELeARN data file not found: {relearn_file}")
        return {}

    data = {
        "parameters": [],
        "points": [],
        "metric": None,
        "regions": {}
    }

    current_region = None

    with open(relearn_file, 'r') as f:
        for line in f:
            line = line.strip()
            if not line:
                continue

            if line.startswith("PARAMETER"):
                param = line.split()[1]
                data["parameters"].append(param)

            elif line.startswith("POINTS"):
                # Parse: POINTS ( 32 5000 )
                match = re.match(r"POINTS \( (.+) \)", line)
                if match:
                    values = tuple(map(int, match.group(1).split()))
                    data["points"].append(values)

            elif line.startswith("METRIC"):
                data["metric"] = line.split()[1]

            elif line.startswith("REGION"):
                current_region = line[6:].strip()
                data["regions"][current_region] = []

            elif line.startswith("DATA") and current_region:
                # Parse: DATA value1 value2 ...
                values = list(map(float, line.split()[1:]))
                data["regions"][current_region].append(values)

    return data


def summarize_lulesh():
    """Print summary of LULESH experiments."""
    experiments = list_lulesh_experiments()

    if not experiments:
        return

    print(f"\n=== LULESH Dataset Summary ===")
    print(f"Total experiments: {len(experiments)}")

    # Group by parameters
    by_processes = defaultdict(list)
    by_size = defaultdict(list)

    for exp in experiments:
        by_processes[exp["processes"]].append(exp)
        by_size[exp["size"]].append(exp)

    print(f"\nProcesses (p): {sorted(by_processes.keys())}")
    print(f"Problem sizes (s): {sorted(by_size.keys())}")

    # Count CUBE files
    cubex_count = sum(1 for exp in experiments if exp["cubex_path"].exists())
    print(f"\nCUBE files available: {cubex_count}")

    print("\n--- Sample experiments ---")
    for exp in experiments[:5]:
        print(f"  {exp['name']}: p={exp['processes']}, s={exp['size']}, r={exp['repetition']}")
        print(f"    CUBE: {exp['cubex_path'].exists()}")


def summarize_relearn():
    """Print summary of RELeARN data."""
    data = parse_relearn_data()

    if not data:
        return

    print(f"\n=== RELeARN Dataset Summary ===")
    print(f"Parameters: {data['parameters']}")
    print(f"Metric: {data['metric']}")
    print(f"Total measurement points: {len(data['points'])}")
    print(f"Regions (functions): {len(data['regions'])}")

    print("\n--- Regions ---")
    for region, measurements in data['regions'].items():
        print(f"  {region}: {len(measurements)} measurements")

    print("\n--- Parameter ranges ---")
    if data['points']:
        p_values = sorted(set(p[0] for p in data['points']))
        n_values = sorted(set(p[1] for p in data['points']))
        print(f"  p (processes): {p_values}")
        print(f"  n (problem size): {n_values}")


def export_for_llm(output_dir: Path):
    """Export data in format suitable for LLM training/testing."""
    output_dir.mkdir(parents=True, exist_ok=True)

    # Export RELeARN regions as potential call paths
    data = parse_relearn_data()
    if data:
        relearn_out = output_dir / "relearn_regions.txt"
        with open(relearn_out, 'w') as f:
            f.write("# RELeARN Function Regions\n")
            f.write(f"# Parameters: {', '.join(data['parameters'])}\n")
            f.write(f"# Points: {len(data['points'])}\n\n")

            for region in data['regions'].keys():
                f.write(f"{region}\n")

        print(f"Exported RELeARN regions to: {relearn_out}")

    # Export LULESH experiment list
    experiments = list_lulesh_experiments()
    if experiments:
        lulesh_out = output_dir / "lulesh_experiments.txt"
        with open(lulesh_out, 'w') as f:
            f.write("# LULESH Experiments\n")
            f.write("# Format: name,processes,size,repetition,cubex_exists\n\n")

            for exp in experiments:
                f.write(f"{exp['name']},{exp['processes']},{exp['size']},"
                       f"{exp['repetition']},{exp['cubex_path'].exists()}\n")

        print(f"Exported LULESH experiments to: {lulesh_out}")


def parse_cubex_callpaths(cubex_path: Path, max_depth: int = 10) -> List[Dict]:
    """
    Parse a CUBE file and extract call paths.

    Requires pycubexr: pip install pycubexr
    """
    try:
        from pycubexr import CubexParser
    except ImportError:
        print("pycubexr not installed. Run: pip install pycubexr")
        return []

    if not cubex_path.exists():
        print(f"CUBE file not found: {cubex_path}")
        return []

    callpaths = []

    def build_callpath_name(cnode, parent_path=""):
        """Recursively build call path names."""
        name = cnode.region.name
        if parent_path:
            path_name = f"{parent_path}->{name}"
        else:
            path_name = name
        return path_name

    def walk_tree(cnode, parent_path="", depth=0):
        """Walk the call tree and collect call paths."""
        if depth > max_depth:
            return

        path_name = build_callpath_name(cnode, parent_path)

        callpaths.append({
            "id": cnode.id,
            "callpath": path_name,
            "region_name": cnode.region.name,
            "depth": depth,
            "source_file": cnode.region.mod if hasattr(cnode.region, 'mod') else None,
            "begin_line": cnode.region.begin if hasattr(cnode.region, 'begin') else None,
            "end_line": cnode.region.end if hasattr(cnode.region, 'end') else None,
        })

        for child in cnode.get_children():
            walk_tree(child, path_name, depth + 1)

    with CubexParser(str(cubex_path)) as parsed:
        for root_cnode in parsed.get_root_cnodes():
            walk_tree(root_cnode)

    return callpaths


def demo_cube_parsing():
    """Demonstrate CUBE file parsing with one LULESH experiment."""
    experiments = list_lulesh_experiments()
    if not experiments:
        print("No LULESH experiments found")
        return

    # Pick first experiment
    exp = experiments[0]
    print(f"\n=== Parsing CUBE file: {exp['name']} ===")
    print(f"CUBE path: {exp['cubex_path']}")

    callpaths = parse_cubex_callpaths(exp['cubex_path'])

    print(f"\nTotal call paths: {len(callpaths)}")
    print("\n--- Sample call paths ---")
    for cp in callpaths[:15]:
        indent = "  " * cp['depth']
        print(f"{indent}{cp['region_name']}")
        if cp['source_file']:
            print(f"{indent}  -> {cp['source_file']}:{cp['begin_line']}-{cp['end_line']}")


def main():
    parser = argparse.ArgumentParser(description="Process Zenodo HPC benchmark data")
    parser.add_argument("--list", action="store_true", help="List available experiments")
    parser.add_argument("--parse-lulesh", action="store_true", help="Summarize LULESH data")
    parser.add_argument("--parse-relearn", action="store_true", help="Summarize RELeARN data")
    parser.add_argument("--demo-cube", action="store_true", help="Demo CUBE file parsing")
    parser.add_argument("--export", type=str, help="Export data to directory for LLM use")

    args = parser.parse_args()

    if args.list or (not any([args.parse_lulesh, args.parse_relearn, args.demo_cube, args.export])):
        print("=== Available Zenodo Datasets ===")
        print(f"Data directory: {DATA_DIR}")
        print()

        # Check what's available
        if (DATA_DIR / "lulesh").exists():
            print("✓ LULESH - 130 CUBE files with Score-P profiling data")
        else:
            print("✗ LULESH - Not downloaded")

        if (DATA_DIR / "RELeARN").exists():
            print("✓ RELeARN - Extra-P text format with function measurements")
        else:
            print("✗ RELeARN - Not downloaded")

        print("\nUse --parse-lulesh or --parse-relearn for details")

    if args.parse_lulesh:
        summarize_lulesh()

    if args.parse_relearn:
        summarize_relearn()

    if args.demo_cube:
        demo_cube_parsing()

    if args.export:
        export_for_llm(Path(args.export))


if __name__ == "__main__":
    main()
