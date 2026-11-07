---
layout: default
title: "Blog — すべての記事"
permalink: /blog/
---
<div class="max-w-4xl mx-auto">
  <div class="mb-8">
    <h1 class="text-3xl font-extrabold text-gray-900 tracking-tight">すべての記事</h1>
    <p class="mt-2 text-sm text-gray-500">技術の学びや日々の開発記録を発信しています。</p>
  </div>

  <div class="space-y-4">
    {% for post in site.posts %}
    {% assign raw_content = post.content | strip_html | strip_newlines %}
    {% assign char_count = raw_content | size %}
    {% assign reading_minutes = char_count | divided_by: 500 | at_least: 1 %}

    <article class="bg-white rounded-xl shadow-sm border border-gray-100 p-6 hover:border-primary/40 transition-all">
      <a class="text-xl font-bold text-gray-900 hover:text-primary transition-colors" href="{{ post.url | relative_url }}">{{ post.title }}</a>
      <div class="mt-2 text-xs sm:text-sm text-gray-400 flex flex-wrap items-center gap-3">
        <span>公開: {{ post.date | date: "%Y年%m月%d日" }}{% if post.author %} · {{ post.author }}{% endif %}</span>
        {% if post.last_modified_at %}
        <span>·</span>
        <span class="text-gray-500">更新: {{ post.last_modified_at | date: "%Y年%m月%d日" }}</span>
        {% endif %}
        <span>·</span>
        <span class="flex items-center gap-1">
          <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
          </svg>
          読了目安: 約{{ reading_minutes }}分
        </span>
      </div>
      <p class="mt-3 text-sm text-gray-600 line-clamp-2">{{ post.excerpt | strip_html | truncatewords: 35 }}</p>
      {% if post.categories %}
      <div class="mt-4 flex flex-wrap gap-1.5">
        {% for cat in post.categories %}
          <a class="inline-block px-2.5 py-0.5 rounded-full text-xs font-medium bg-primary/10 text-primary hover:bg-primary/20 transition-colors" href="{{ '/categories/' | append: cat | append: '/' | relative_url }}">#{{ cat }}</a>
        {% endfor %}
      </div>
      {% endif %}
    </article>
    {% endfor %}
  </div>
</div>
