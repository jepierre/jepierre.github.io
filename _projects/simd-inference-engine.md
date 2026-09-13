---
title: Custom SIMD Inference Engine for Resource-Constrained Hardware
summary: Reducing ML latency and memory use by treating inference as a data-movement and microkernel problem, not just a model problem.
domain: Embedded Compute
order: 3
featured: true
focus: Inference engines · SIMD · memory optimization
tags: [SIMD, C/C++, Inference, Performance, TinyML]
---
## Problem {#problem}

Once a model fits the accuracy requirement, deployment often becomes a computer-architecture problem. For embedded ML, convolution performance depends on memory layout, vector width, cache behavior, reuse, loop structure, and the cost of moving data between memory levels.

## Constraints {#constraints}

- Tight RAM and storage budgets.
- Real-time latency requirements.
- Limited processor resources compared with workstation-class inference.
- Need for deterministic, inspectable execution paths.

## Approach {#approach}

I developed custom inference engine components and optimized machine-learning kernels with SIMD instructions. The optimization strategy focused on the full execution path:

- reduce intermediate-buffer pressure,
- improve data locality,
- expose vectorizable inner loops,
- tile computation to increase reuse,
- minimize redundant transforms and memory copies,
- select microkernel shapes that balance register pressure and reuse.

For convolution, the mental model is less “call Conv2D” and more “build a tiny matrix engine that repeatedly feeds the vector unit without starving it.”

## Results {#results}

The optimized inference path reduced latency and memory usage compared with the baseline, enabling real-time model execution on constrained hardware.

## Engineering notes {#engineering-notes}

A useful roofline-style question is whether a kernel is limited by compute throughput or by memory bandwidth. Optimization effort should follow the bottleneck. If arithmetic units are waiting on data, more unrolling may only make the source code look athletic while the memory subsystem remains the actual runner.
