# Case 1: BC_MPI Benchmark

## Overview

This analysis is based on the C++ code files `BC_MPI.cpp` and `structure.h`. The code was executed on the Lichtenberg cluster and instrumented using Score-P with LLVM software counter support.

### Measurements
- **Basic blocks** and **bytes transferred** for MPI functions:
  - MPI_Bcast, MPI_Scatter, MPI_Gather, MPI_Allgather
  - MPI_Reduce, MPI_Allreduce, MPI_Send, MPI_Recv

### Input Parameters
- Problem size `n`: [8k, 16k, 24k, 32k, 40k]
- Number of MPI ranks `p`: [128, 256, 512, 1024, 2048]
- Full combination: 25 independent measurements

## Files Description

### LLM Input Files

| File | Description |
|------|-------------|
| `BC_MPI.cpp`, `structure.h` | C++ source code |
| `BC_MPI.ll` | LLVM intermediate representation |
| `call_path.txt` | Function call path |

### Measurement Files

| File | Description |
|------|-------------|
| `measurement_swc_all.txt` | All input parameters with software counter output |
| `measurement_visits_all.txt` | Number of executions per function |
| `measurement_n.txt` | Variation of `n` parameter |
| `measurement_p.txt` | Variation of `p` parameter |
| `measurement_swc_.txt` | Average software counter measurements |
| `measurement_visits.txt` | Function execution counts |
| `complexity_bb.txt` | Analytical complexity of each call path |
| `performance.txt` | Extra-P performance model |

### CUBE Files

The `measurements_swc_cube/` directory contains Score-P measurement files. To visualize:

1. Install Extra-P: https://github.com/extra-p/extrap
2. Open `extrap-gui` -> File -> Open set of cube files -> Select `measurements_swc_cube/`

## Data Organization

```
Input 1: C++ code (BC_MPI.cpp, structure.h)
  -> Output 1: Call path (call_path.txt)
  -> Output 2: Code complexity (complexity_bb.txt)

Input 2: Code measurements
  -> Performance models
```

## Complexity Calculation

For a call path `main -> F1 -> ... -> Fi`:
- Complexity = `O(Fi(n)) * #executions_of_Fi(n)`
- The complexity depends on both the function's intrinsic complexity and how often it's called
