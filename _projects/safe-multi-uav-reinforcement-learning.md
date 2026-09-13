---
title: Safe Multi-UAV Coordination with Deep Reinforcement Learning
summary: Doctoral research on decentralized multi-agent coordination under partial observability and explicit safety / temporal-spatial constraints.
domain: Autonomy Research
order: 4
featured: true
role: Ph.D. Researcher
focus: Multi-agent RL · safety · UAV coordination
context: University of New Mexico doctoral research
metrics:
  - value: "Ph.D."
    label: "Computer Engineering"
  - value: "MARL"
    label: "decentralized coordination"
tags: [Reinforcement Learning, Multi-Agent Systems, UAVs, Safety, Control]
---
## Problem {#problem}

Multi-UAV coordination becomes difficult when each vehicle has incomplete information, agents must act concurrently, and safety cannot be treated as a soft preference. Learning must produce useful cooperative behavior without ignoring the geometry and constraints of the physical system.

## Constraints {#constraints}

My doctoral work focused on decentralized coordination with partial observability, safety requirements, and temporal-spatial constraints. The central tension was familiar to anyone combining learning and controls: **how do we preserve the adaptability of reinforcement learning while making safety structure explicit?**

## Approach {#approach}

The research explored multi-agent deep reinforcement learning methods for coordinated UAV behavior, including partial observability and safety-aware formulations. The work connected reinforcement-learning policy design with constraint handling and control-oriented reasoning.

A decentralized formulation can be viewed as each agent selecting an action from local information,

$$a_i \sim \pi_i(a_i \mid o_i),$$

while the joint system must satisfy safety and coordination requirements that may depend on the relative state of multiple agents.

## Results {#results}

The research produced a Ph.D. dissertation and peer-reviewed publications in **AIAA**, **IEEE Access**, and the multi-agent robotics literature. It also became a foundation for later technical work and internal reinforcement-learning education.

## Engineering notes {#engineering-notes}

The enduring lesson is that autonomy needs both **decision intelligence** and **constraint intelligence**. Learned policies are powerful, but engineering confidence rises when the design makes safety, observability, timing, and failure modes first-class parts of the problem statement.

See the [research and publications page]({{ '/research/' | relative_url }}) for citations and the dissertation link.
