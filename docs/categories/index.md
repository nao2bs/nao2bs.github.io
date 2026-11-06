---
layout: default
title: "カテゴリ一覧"
permalink: /categories/
---

<div class="max-w-4xl mx-auto">
  <!-- Back to blog link -->
  <div class="mb-6">
    <a href="{{ '/blog/' | relative_url }}"
      class="inline-flex items-center text-sm font-medium text-gray-500 hover:text-primary transition-colors">
      <svg class="w-4 h-4 mr-1.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 19l-7-7m0 0l7-7m-7 7h18" />
      </svg>
      すべての記事に戻る
    </a>
  </div>

  <header class="mb-8">
    <h1 class="text-3xl font-extrabold text-gray-900 tracking-tight">
      カテゴリー一覧
    </h1>
    <p class="mt-2 text-sm text-gray-500">
      ブログ内のカテゴリー一覧です。
    </p>
  </header>

  <div class="grid sm:grid-cols-2 md:grid-cols-3 gap-4">
    {% for category in site.categories %}
    {% assign cat_name = category[0] %}
    {% assign posts_count = category[1] | size %}
    <a href="{{ '/categories/' | append: cat_name | append: '/' | relative_url }}"
      class="group block p-5 bg-white rounded-xl shadow-sm border border-gray-100 hover:border-primary/50 hover:shadow-md transition-all">
      <div class="flex items-center justify-between">
        <span class="text-lg font-bold text-gray-800 group-hover:text-primary transition-colors">
          #{{ cat_name }}
        </span>
        <span class="text-xs font-semibold px-2.5 py-1 bg-gray-100 group-hover:bg-primary/10 group-hover:text-primary text-gray-600 rounded-full transition-colors">
          {{ posts_count }} 件
        </span>
      </div>
    </a>
    {% endfor %}
  </div>
</div>

