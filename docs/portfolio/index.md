
---
layout: default
title: "Portfolio — すべてのポートフオリオ"
permalink: /portfolio/
---
<style>
.post-content {
  max-width: none;
}
</style>
<h1 class="text-2xl font-bold">すべてのポートフオリオ</h1>

<div class="mt-4 grid sm:grid-cols-2 lg:grid-cols-3 gap-6">
  {% for item in site.portfolio %}
  <a href="{{ item.url | relative_url }}" class="group bg-white rounded-lg shadow overflow-hidden transition-all duration-300 hover:shadow-xl hover:-translate-y-2 cursor-pointer">
    {% if item.image %}
    <div class="h-40 bg-gray-200 flex items-center justify-center text-gray-400 overflow-hidden">
      <img src="{{ item.image | relative_url }}" alt="{{ item.title }}" class="w-full h-full object-cover transition-transform duration-300 group-hover:scale-110">
    </div>
    {% else %}
    <div class="h-40 bg-gradient-to-br from-primary/20 to-accent/10 flex items-center justify-center text-gray-400">No Image</div>
    {% endif %}
    <div class="p-4">
      <h3 class="font-semibold text-lg group-hover:text-primary transition-colors duration-300">{{ item.title }}</h3>
      {% if item.description %}
      <div class="text-sm text-gray-600 mt-2">{{ item.description }}</div>
      {% elsif item.excerpt %}
      <div class="text-sm text-gray-600 mt-2">{{ item.excerpt | strip_html | truncatewords: 15 }}</div>
      {% endif %}
    </div>
  </a>
  {% endfor %}
</div>
