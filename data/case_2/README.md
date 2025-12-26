# Case 2: MPI Kernel Benchmarks

## Overview

### Motivation
Functions with known theoretical complexity need to be understood in terms of their correlations. For example, if `F1()` calls `F2()` inside a loop, the loop in `F1()` will define the complexity in `F2()`.

### Dataset Composition
- **10 MPI kernels**
- **22 sequential kernels**
- Heterogeneity defined by function combinations (sequential, nested, different input formats)

## Directory Structure

Each experiment contains:
- `DATA/` - CUBE files with measurements
- `OUTPUT/` - Text files for each code:
  - `call_path.txt` - All call paths from source code (LLM input)
  - `complexity.txt` - Complexity of each call path in Big-O notation (LLM input)
  - `coordinates.txt` - Input parameters and coordinates for measurements (LLM input)
  - `executions.txt` - Performance model for function execution counts
  - `performance.txt` - Full performance equation for each call path

## Experiments

### experiment_1
Two introductory MPI codes:
- **code_1**: 10 MPI functions (void type)
- **code_2**: Same as code_1 but with int functions; output of one function becomes input of next

### experiment_2
10 MPI codes, each composed of:
- One MPI kernel followed by 22 sequential kernels
- Dataset has long functions with multiple sequential instructions
- Does NOT explore call paths (same as experiment_1)

### experiment_3
- 10 MPI codes
- Dataset with different **call paths outside the loop**

### experiment_4
- Same codes as experiment_3
- Different variations in input, changing performance (e.g., `n = n^(2/3)`)

### experiment_5
- Similar to experiment_3
- Call path is called **inside a loop** on the first MPI function
- This changes the performance of all path functions

## Implementation Details

| Experiment | Source | Notes |
|------------|--------|-------|
| experiment_1 | `test_kernels/experiment_1` | Basic MPI functions |
| experiment_2 | `test_kernels/experiment_2` | MPI + sequential kernels |
| experiment_3 | `test_kernels/example_generate_path` -> `experiment_3` | Generated call paths |
| experiment_4 | Manual changes from experiment_3 | Input variations |
| experiment_5 | `test_kernels/example_generate_path_v2` -> `experiment_3` | Loop-nested call paths |
