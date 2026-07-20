---
layout: default
title: "Portfolio — すべてのポートフオリオ"
permalink: /portfolio/
---
<h1 class="text-2xl font-bold">すべてのポートフオリオ</h1>
<!-- <p class="text-gray-600 mt-2">全てのポートフオリオ一覧です（新しい順）</p> -->

<div class="mt-4 space-y-4">
{% for portfolio in site.portfolio %}
<article class="bg-white rounded-lg shadow p-5">
  <a class="text-xl font-semibold hover:underline" href="{{ portfolio.url | relative_url }}">{{ portfolio.title }}</a>
  <div class="mt-2 text-sm text-gray-500">{{ portfolio.date | date: "%Y-%m-%d" }}{% if portfolio.author %} · {{ portfolio.author }}{% endif %}</div>
  <p class="mt-3 text-gray-600">{{ portfolio.excerpt | strip_html | truncatewords: 30 }}</p>
  {% if portfolio.categories %}
  <div class="mt-3 text-xs text-gray-500">Categories:
    {% for cat in portfolio.categories %}
      <a class="underline" href="{{ '/categories/' | append: cat | relative_url }}">{{ cat }}</a>{% if forloop.last == false %}, {% endif %}
    {% endfor %}
  </div>
  {% endif %}
</article>
{% endfor %}
</div>