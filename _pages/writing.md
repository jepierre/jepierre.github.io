---
layout: page
title: Writing
eyebrow: Technical notes
description: Notes on AI/ML, embedded inference, real-time systems, agentic automation, autonomy, and engineering practice.
permalink: /writing/
---
{% if site.posts.size > 0 %}
<div class="writing-list">
{% for post in site.posts %}
  <article><p class="eyebrow">{{ post.date | date: "%Y.%m.%d" }}</p><h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2><p>{{ post.description }}</p></article>
{% endfor %}
</div>
{% else %}
<p>Technical notes are coming soon.</p>
{% endif %}
