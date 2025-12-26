# Paper Draft: LLM-based Performance Modeling for HPC

## Title Candidates

- An LLM-based modeling guide for HPC performance models
- An LLM-based validation for empirical application performance models
- Improving the confidence of HPC performance models: an LLM-based modeling guide

## Goal (Summary)

- LLM analysis with new dataset format
- Increase the credibility of performance models by suggesting expected performance based on source code
- Expose scalability issues where performance scales differently from expectation

## Contributions

1. **Source code analysis**: We propose an expected analytical complexity that is statically determined by analyzing the source code and how different function paths interact during the application.

2. **Model's credibility**: Our approach guides empirical performance analysis, suggesting the complexity class of the function and exposing similarities and divergences in scaling behavior when compared with the empirical performance model.

3. **Bottleneck identification**: We identify performance bottlenecks (e.g., hardware issues, waiting stages) that arise from discrepancies between actual and expected performance.

## Abstract (151 words)

Understanding the scalability behavior of parallel code is crucial for optimizing the performance of high-performance computing (HPC) systems. Different techniques as empirical performance models or source code analysis, can offer valuable insights into performance. However, the first can be affected by measurement uncertainties, while the latter can be laborious and prone to errors. We propose a method to automatically combine the two techniques. Our method is based on large language models (LLMs) to analyse the code statically, uncovering the initial expectation of its scalability. Our approach is then used to guide empirical performance modeling, suggesting when the model is correct, or it still needs more measurements. Additionally, it compares expected and actual performance, uncovering when one variable (e.g., waiting time) scales higher than predicted. Experiments with four HPC applications demonstrate that our AI-based method can enhance the reliability of the models and pinpoint bottlenecks more effectively than two state-of-the-art techniques.

## Introduction

State-of-the-art technologies are often developed and validated using large-scale parallel algorithms. High-performance computing (HPC) systems utilize such algorithms to guide new developments in critical areas, including AI, quantum computing, and climate change research. Due to the complexity of the systems and their applications, algorithm engineering aims to understand how parallel codes can be scaled to process the maximum amount of data while optimizing the available computational resources. In this sense, performance models (mathematical representations of code behavior) can reveal scaling limitations, as they indicate how performance metrics (such as execution time) change when code variables (e.g., the number of MPI ranks or problem size) scale.

Empirical performance modeling is a straightforward solution for performance analysis. It relies on measurement data to design performance equations, and tools such as Extra-P enable the automatic modeling of measurements into human-readable equations. However, the quality of the model relies on the reliability of the measurements, and as the complexity of the system and the size of applications increase, it is often the presence of noise or disturbance in the measurement data. Different approaches are employed to increase the reliability of the models. However, they still define the final performance based on the measurement data and overlook important aspects, such as the source code.

Manual inspection of the source code is a valuable option for understanding its behavior. However, code developers do not always provide details on the analytical complexity of their algorithms. Additionally, in complex and large applications—with thousands of lines of code—manually deriving performance is an increasingly laborious and error-prone activity. The use of large language models (LLMs) can be a possible solution. LLMs have already been applied to analyze source code; however, in most cases, sequential applications are used. It is fundamental for developers of HPC applications to have an understanding of how it is divided on computer clusters and the effect of using more computational resources. Furthermore, analyzing the code only statically can hide performance characteristics that are specific to software-hardware integration, such as communication or waiting scaling time.

To address the aforementioned challenges, we propose an approach that combines the best aspects of LLM code analysis and empirical models:

1. First, we train LLMs to predict the expected performance of parallel codes, taking into account how variables are scaled and divided among MPI ranks. This provides an LLM-based method to estimate the analytical complexity of HPC applications. We refer to this solution as **LLM-judge**.

2. We implement our LLM-judge into Extra-P, providing an automatic comparison of expected and measured performance equations. The LLM-judge also suggests that the performance equation should be corrected or that more measurements are necessary, and indicates when a variable is increasing at a rate higher than expected, uncovering potential bottlenecks.

## Background and Motivation

### Section 1: LLMs for Code Complexity Definition

It is unquestionable that finding the performance of code only by statically analyzing the source code would be the most efficient solution. The capabilities of LLMs for this task have been presented in different works. Although these results are promising and can accurately predict the performance of different functions, the datasets are designed for sequential codes and only consider individual functions, not how they interact with other functions in the application.

For HPC applications, one function can interfere with or define the performance of other functions. For example, a function `bar` may be linear, but if called inside a loop in function `foo`, the result is quadratic complexity. In addition, parallel codes can have analytical complexities that cannot be defined solely statically, where performance is defined by communication time.

In parallel code, certain scaling characteristics can significantly impact code performance and can only be precisely identified through the verification of measurement data. For example, MPI collective communication can have an expected runtime performance of `y(p) = c * log2(p)`, where `p` is the number of MPI ranks and `c` is a constant value; however, the actual performance often deviates from these expectations. Therefore, we consider LLM as an indication of expected scaling complexity, which will increase the reliability of real performance equations.

### Section 2: Empirical Performance Modeling

Our solution is implemented into Extra-P, an empirical performance modeling tool for HPC applications, which uses a set of measurements of a variable we aim to represent (e.g., wall-clock execution time), as a function of the application input parameters (e.g., number of MPI ranks or the problem size).

Extra-P takes `m` input parameters, represented by `{x1,...,xm}`, and applies the **Performance Model Normal Form (PMNF)** to design function hypothesis. The PMNF restricts the equations to represent the most common HPC applications, but measurement data is still one of the key elements in defining the models. External factors can still damage the measurements and, consequently, the models.

Different approaches were used to increase the reliability of performance models in Extra-P:
- Heuristics as DNN
- Noise-resilience priors
- Taint analysis to identify which parameters affect the function

Our work shares a similar objective with these previous works, as we aim to enhance the credibility of the models and expose discrepancies between expectations and the actual model. Our project, on the other hand, employs an LLM-based method that examines the source code to guide the performance of parallel codes, a characteristic not previously explored.

## Method Overview

### Figure Description (Planned)

The figure should show:
1. An application and an HPC system
2. Move to empirical performance
3. AI/LLM judges the performance
4. **Correct model**: aligns with both expectation and reality
5. **Incorrect model**: displays a function with incorrect performance variables (expect `n` and get `n * p^(1/3)`, where `p` is basically noise)
6. **Bottleneck case**: variable scaling higher than expected, indicating stronger influence of waiting stage (expect `log(p)` and get `p`, or expect constant and get `log(p)`)

## Future Directions

### Cost Reduction
- Do performance modeling while minimizing its cost
- Identify performance model using small set of SWC measurements
- Use PINN to adjust SWC and runtime where SWC cannot be representative (e.g., MPI communication, MPI barrier)

### Code Correlation Analysis
- Identify how functions affect each other
- Frequency with which function 1 is executed is determined by performance of function 2
- Deal with busy waiting
- Analyze how noise in one function affects others

### Overall Goals
- Minimize cost
- Understand code structure
