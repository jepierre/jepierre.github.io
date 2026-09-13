---
title: Neural Architecture Search for Accuracy-Efficiency Tradeoffs
summary: Using NAS to search CNN design space with deployment constraints in mind rather than optimizing accuracy in isolation.
domain: ML Systems
order: 2
featured: true
focus: NAS · model design · embedded deployment
tags: [NAS, PyTorch, CNNs, Optimization, ML]
---
## Problem {#problem}

A hand-designed CNN can be accurate and still be the wrong network for the processor that must run it. The design question is multi-objective: **which topology gives the best useful accuracy under real deployment constraints, while still supporting downstream automation and decision-making workflows?**

## Constraints {#constraints}

The search space had to reflect the realities of embedded inference: operator cost, activation sizes, model memory, and execution time all matter. A search process that ignores hardware behavior can efficiently discover architectures that are impossible to deploy.

## Approach {#approach}

I applied neural architecture search to CNN design for infrared target detection and classification. The engineering pattern was to expose architectural choices to search while keeping deployment metrics visible in the objective and validation loop.

At a conceptual level, the objective can be written as a constrained optimization:

$$\max_{a \in \mathcal{A}}\; \text{Accuracy}(a)$$

subject to

$$\text{Latency}(a) \le L_{max}, \qquad \text{Memory}(a) \le M_{max}$$

or converted into a scalar reward that penalizes violations of the target operating point.

I also separated **model-level search** from **kernel-level execution efficiency**. NAS chooses the graph. Inference optimization determines how efficiently that graph maps to the processor. Both layers must cooperate.

## Results {#results}

The searched CNN improved model accuracy while reducing inference time and memory usage enough to support real-time embedded processing.

## Engineering notes {#engineering-notes}

NAS becomes much more useful when the cost model resembles the target platform. FLOPs can be a rough proxy, but operator mix, memory movement, cache behavior, SIMD utilization, and implementation quality can dominate actual latency. For practical ML deployment work, I prefer the hierarchy:

**measured target latency > target-specific lookup table > learned latency model > analytical proxy > FLOPs alone.**
