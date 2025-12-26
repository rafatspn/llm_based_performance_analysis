# Project Guide

## Data Sources

Training data taken from:
- https://huggingface.co/datasets/codeparrot/codecomplex/viewer/default/train?f[complexity][value]=%27constant%27
- https://huggingface.co/datasets/Banana-Leopard/TASTY.plus.plus

## Tasks

### Task 1: Code Conversion
Using ChatGPT, convert some of the code for C++ (sequential and MPI versions). Create functions.

### Task 2: Call Path Construction
Rearrange the functions to create multiple call paths, basic blocks, and execution counts.

### Task 3: Performance Measurement
Execute and measure code's performance (requires LLVM 13 in Lichtenberg), or do it symbolically.

## TODO Items

- [ ] Prepare a few examples of how the workflow should work (Gustavo and Alex)
- [ ] Fill the table with existing data (Gustavo, Alex, and Yuning)
- [ ] Prepare LLM workflow (Yuning)
- [ ] Prepare environment for installation (Gustavo and Alex)
- [ ] Prepare a simple example to create context for the LLM
- [ ] Provide data to compare with a non-trained LLM
