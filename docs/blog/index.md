---
layout: default
title: "Blog — すべての記事"
permalink: /blog/
---
<h1 class="text-2xl font-bold">すべての記事</h1>
<!-- <p class="text-gray-600 mt-2">全投稿一覧です（新しい順）</p> -->

<div class="mt-4 space-y-4">
{% for post in site.posts %}
{% assign raw_content = post.content | strip_html | strip_newlines %}
{% assign char_count = raw_content | size %}
{% assign reading_minutes = char_count | divided_by: 500 | at_least: 1 %}

<article class="bg-white rounded-lg shadow p-5">
  <a class="text-xl font-semibold hover:underline" href="{{ post.url | relative_url }}">{{ post.title }}</a>
  <div class="mt-2 text-sm text-gray-500 flex items-center gap-3">
    <span>{{ post.date | date: "%Y-%m-%d" }}{% if post.author %} · {{ post.author }}{% endif %}</span>
    <span>·</span>
    <span class="flex items-center gap-1 text-gray-400">
      <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
      </svg>
      約{{ reading_minutes }}分
    </span>
  </div>
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
