---
title: Design the Model for the Processor, Not the Benchmark
description: Why ML and agentic deployment systems should treat latency, memory movement, operator support, and measurement as first-class objectives.
---
A model can win a benchmark and still lose the deployment.

For AI/ML systems and AI-enabled automation, I think about architecture selection as a negotiation between four budgets: **accuracy, latency, memory, and implementation complexity**. The target processor gets a vote in every design decision, and so does the downstream agentic workflow that depends on timely, trustworthy predictions.

## FLOPs are useful, but incomplete

FLOPs estimate arithmetic work. They do not tell you whether the kernel uses the vector unit efficiently, whether activations spill out of cache, whether an operator is well optimized by the inference runtime, or whether data-layout transforms consume a surprising fraction of execution time.

That is why hardware-aware architecture work benefits from cost signals that move progressively closer to the real target:

1. measured target latency,
2. target-specific operator lookup tables,
3. learned latency predictors trained from target measurements,
4. analytical estimates,
5. FLOPs as a coarse fallback.

## Memory is a performance variable

Peak activation memory is not merely a “will it fit?” check. Memory layout and movement affect latency, cache behavior, and sometimes whether a particular kernel strategy is possible at all.

## Search and kernel optimization are different layers

Neural architecture search chooses *what graph to execute*. Kernel and inference-engine optimization decide *how that graph executes*. Treating them separately makes debugging easier, but treating their objectives together produces better systems.

The practical goal is not the smallest network or the fastest network. It is the network that creates the most useful system behavior inside the real deployment envelope.
