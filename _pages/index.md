---
layout: default
title: Home
description: AI/ML systems engineer building reliable agentic automation, autonomy, and embedded intelligence for high-consequence systems.
permalink: /
---
<section class="home-hero">
  <div class="hero-copy">
    <p class="eyebrow">AI/ML · AGENTIC AUTOMATION · AUTONOMY · GN&C</p>
    <h1>I build AI/ML systems and agentic engineering workflows that shorten the path from data to decision.</h1>
    <p class="hero-deck">I’m Dr. Jean-Elie Pierre, an AI/ML systems engineer who connects model development, embedded inference, simulation, and AI-driven automation into reliable workflows for high-consequence systems.</p>
    <div class="hero-actions">
      <a class="button primary" href="{{ '/projects/' | relative_url }}">Explore case studies</a>
    </div>
  </div>
  <div class="hero-panel" aria-label="Engineering profile overview">
    <div class="terminal-title"><span></span><span></span><span></span><code>profile.yaml</code></div>
<pre><code>engineer:
  focus:
    - AI/ML perception
    - agentic engineering automation
    - autonomous systems
    - embedded AI
  strengths:
    - data → model → decision
    - simulation → test → iteration
    - algorithm → hardware → evidence
  operating_mode:
    reliability + traceability + latency + performance</code></pre>
  </div>
</section>

<section class="section-shell">
  <div class="section-heading">
    <div><p class="eyebrow">SELECTED WORK</p><h2>Engineering loops built from data, model behavior, test evidence, and execution.</h2></div>
    <a class="text-link" href="{{ '/projects/' | relative_url }}">View all projects →</a>
  </div>
  <div class="project-grid">
    {% assign featured = site.projects | where: "featured", true | sort: "order" %}
    {% for project in featured limit:6 %}{% include project-card.html project=project %}{% endfor %}
  </div>
</section>

<section class="section-shell split-section">
  <div>
    <p class="eyebrow">WHAT I BRING</p>
    <h2>A systems view of AI/ML and agentic engineering automation.</h2>
  </div>
  <div class="capability-list">
    <article><span>01</span><div><h3>Engineering Automation + GN&C</h3><p>Python and MATLAB workflow automation, dynamics, estimation, guidance, control, 6-DOF simulation, Monte Carlo campaigns, and system-level evaluation for autonomous and mission-critical systems.</p></div></article>
    <article><span>02</span><div><h3>AI/ML + Computer Vision</h3><p>Detection and classification, neural architecture search, TensorFlow Lite, TinyML, SIMD kernels, memory-aware inference, and deployment under real-time, resource-constrained conditions.</p></div></article>
    <article><span>03</span><div><h3>Data, Simulation + Test Loops</h3><p>MLOps, ETL, flight-test data systems, digital twins, CI/CD, software-in-the-loop validation, and repeatable evidence from build through analysis.</p></div></article>
    <article><span>04</span><div><h3>Agentic AI + Technical Leadership</h3><p>Staff-level R&D direction, cross-functional product teams, mentoring, verification strategy, and translating AI and autonomy research into deployable, mission-ready capability.</p></div></article>
  </div>
</section>

<section class="section-shell journey-section">
  <p class="eyebrow">AI AGENTS + ML SYSTEMS</p>
  <h2>Engineering tools → simulation → data → AI/ML → agentic workflows → verified decisions.</h2>
  <p>I build the connective tissue that helps engineering teams move from analysis to action: repeatable data pipelines, automated simulation and test loops, deployed ML systems, and AI-enabled automation that remains grounded in evidence.</p>
  <a class="button ghost" href="{{ '/experience/' | relative_url }}">See experience timeline</a>
</section>
