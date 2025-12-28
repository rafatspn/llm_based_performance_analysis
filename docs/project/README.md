# Project Description: LLM-based HPC Performance Modeling

## Overview

This project combines LLM static code analysis with Extra-P empirical performance modeling to improve the credibility of HPC parallel code performance models.

## Research Goals

### Primary Contributions

1. **Source Code Analysis** - Use LLM to analyze code and predict time complexity (considering call path effects)
2. **Model Credibility** - Use LLM predictions as a "judge" to validate Extra-P empirical models
3. **Bottleneck Identification** - When LLM prediction differs from actual measurements, it may indicate hardware issues, waiting time, or other bottlenecks

## Technical Challenges

| Challenge | Description |
|-----------|-------------|
| Parallel code complexity format | Traditional is O(n), but parallel code needs p (processes), e.g., `p^1 * n^1` |
| Call path effects | Function foo is O(n), but if called in a loop, overall may be O(n²) |
| LLM training data | Existing datasets are mainly sequential code, lacking parallel code |
| Ground truth | "Correct answer" for real applications is hard to determine |

## Method

### Input/Output Format
```
Input:  Source Code + Call Path + Input Parameters (p, n)
Output: Complexity (e.g., n^(3/2), p^1 * n^1)
```

### Workflow
```
Source Code → LLM → Predicted Complexity (Expected)
                         ↓
                 Compare with Extra-P Model
                         ↓
              ┌──────────┴──────────┐
              ↓                     ↓
         Agree → Model Correct   Disagree → Investigate
                                 (noise/bottleneck/hardware)
```

### LLM Judge
- Activated when deviations exist between LLM prediction and Extra-P model
- Use exponent variation metric to detect deviations
- Adjust model or flag for investigation when deviation occurs

## Team

| Member | Role |
|--------|------|
| **Gustavo** | Dataset generation, paper writing, Extra-P integration |
| **Yuning** | LLM experiments, prompt engineering |
| **Rafat** | Qwen Coder model experiments |
| **Alexander** | CUBE file parsing, source code extraction |

## Data

### Case 1: BC_MPI Benchmark
- 46 call paths with known complexity
- Parameters: p=[128-2048], n=[8k-40k]
- Software counters for measurements

### Case 2: MPI Kernel Experiments
- 5 experiments with increasing complexity
- 10 MPI kernels + 22 sequential kernels
- ~7000 call paths estimated

### Complexity Classes
`constant`, `log2(p)`, `n`, `n^(3/2)`, `p*n`, `log2(p)*n`, `p`

## Evaluation Strategy

1. **Synthetic Data**: Datasets with known ground truth
2. **Test Points**: Held-out measurements for validation
3. **Real Applications**: Kripke, MiniFE, LULESH
   - If LLM and Extra-P agree → likely correct
   - If disagree → manual investigation

## Models

| Model | Notes |
|-------|-------|
| Qwen Coder 2.5/3 | Good accuracy, local deployment |
| DeepSeek | Fast inference, API access |
| GPT-4 | Sanity check only |

## Paper

### Title Candidates
- "Improving HPC Performance Models: An LLM-based Modeling Guide"
- "An LLM-based Validation for Empirical Application Performance Models"

### Structure
1. Introduction
2. Background (LLM for code complexity, Extra-P)
3. Method
4. Evaluation
5. Conclusion

## Key Technical Notes

- **Weak Scaling**: N increases proportionally with P
- **Software Counters**: Using basic blocks (deterministic, no runtime noise)
- **Token Limits**: ~130k tokens context window limit
- **Prompt Engineering**: Critical for parallel code understanding
