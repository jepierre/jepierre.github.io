---
title: Real-Time IR Target Detection on Embedded Compute
summary: Designing AI/ML perception for infrared imagery under strict latency, memory, and false-alarm constraints.
domain: Embedded AI
order: 1
featured: true
focus: Computer vision · embedded inference
tags: [Computer Vision, Infrared, CNNs, Embedded AI]
---
## Problem {#problem}

Infrared target detection is a systems problem disguised as a model-training problem. The detector must identify dim, difficult targets in cluttered environment, but the useful operating point is shaped by more than model accuracy. **False alarms, inference latency, memory footprint, CPU utilization, tracker behavior, and the target processor** all influence whether the perception system is useful in practice.

I led R&D work to move machine-learning target detection and classification from experimental models toward real-time embedded execution and system-level evaluation.

## Constraints {#constraints}

- Limited compute and memory on the embedded target.
- A real-time processing budget rather than offline throughput.
- Dim-target imagery where preprocessing and output resolution matter.

## Approach {#approach}

I treated the detector as one component in an end-to-end perception chain. Model architecture work was paired with deployment analysis, inference optimization, data-pipeline improvements, and software-in-the-loop integration.

Key engineering threads included:

1. **Architecture search and model design** to improve the accuracy-efficiency trade space.
2. **Embedded inference optimization** to reduce latency, memory footprint, and CPU pressure.
3. **Flight-test imagery pipelines** to make training and evaluation data easier to ingest and preprocess.

## Results {#results}

The resulting CNN design improved model accuracy while also reducing inference time and memory usage, enabling real-time embedded processing. Integration into a software-in-the-loop testbed demonstrated improved model accuracy.

## Engineering notes {#engineering-notes}

The important lesson was that the best detector is not necessarily the model with the highest isolated benchmark score. For an embedded perception stack, the right objective is closer to a constrained systems optimization problem:

$$\text{utility} = f(\text{detection quality}, \text{latency}, \text{memory})$$

That framing naturally connects model design, neural architecture search, embedded optimization, and system-level verification.
