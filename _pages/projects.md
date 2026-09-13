---
layout: page
title: Selected Projects
eyebrow: Engineering portfolio
description: Case studies spanning AI/ML, autonomous perception, GN&C, simulation, computer vision, and AI-enabled engineering infrastructure.
permalink: /projects/
---
<div class="project-grid all-projects">
{% assign ordered = site.projects | sort: "order" %}
{% for project in ordered %}{% include project-card.html project=project %}{% endfor %}
</div>
