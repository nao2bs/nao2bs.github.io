---
layout: default
title: "Blog — すべての記事"
permalink: /blog/
---
<h1 class="text-2xl font-bold">すべての記事</h1>
<!-- <p class="text-gray-600 mt-2">全投稿一覧です（新しい順）</p> -->

<div class="mt-4 space-y-4">
{% for post in site.posts %}
<article class="bg-white rounded-lg shadow p-5">
  <a class="text-xl font-semibold hover:underline" href="{{ post.url | relative_url }}">{{ post.title }}</a>
  <div class="mt-2 text-sm text-gray-500">{{ post.date | date: "%Y-%m-%d" }}{% if post.author %} · {{ post.author }}{% endif %}</div>
  <p class="mt-3 text-gray-600">{{ post.excerpt | strip_html | truncatewords: 30 }}</p>
  {% if post.categories %}
  <div class="mt-3 text-xs text-gray-500">Categories:
    {% for cat in post.categories %}
      <a class="underline" href="{{ '/categories/' | append: cat | relative_url }}">{{ cat }}</a>{% if forloop.last == false %}, {% endif %}
    {% endfor %}
  </div>
  {% endif %}
</article>
{% endfor %}
</div>