---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---
<!-- 
<!-- Hero -->
<section class="grid md:grid-cols-2 gap-8 items-center">
    <div>
        <h1 class="text-4xl md:text-5xl font-extrabold leading-tight">AIとコードでアイデアを形にする<br /><span
                class="text-primary">nao2bs</span></h1>
        <p class="mt-4 text-lg text-gray-600">ブログでは学びを、ポートフォリオでは実績を。Tailwind CSS を使ったシンプルな UI モックです。</p>
        <div class="mt-6 flex flex-wrap gap-3">
            <a href="/blog/"
                class="inline-block px-5 py-3 bg-primary text-white rounded-md shadow hover:opacity-95">ブログを読む</a>
            <a href="/portfolio/"
                class="inline-block px-5 py-3 border border-gray-200 rounded-md hover:bg-gray-50">ポートフォリオを見る</a>
        </div>
    </div>
    <div class="bg-gradient-to-br from-primary/20 to-accent/10 rounded-xl p-6">
        <!-- Simple "cards" preview: recent posts & projects -->
        <div class="grid grid-cols-1 gap-4">
            <div class="bg-white rounded-lg p-4 shadow">
                <div class="text-sm font-semibold text-gray-700">Recent Post</div>
                {% assign latest = site.posts | first %}
                {% if latest %}
                <a href="{{ latest.url | relative_url }}" class="mt-2 text-gray-600 block font-semibold hover:underline">{{ latest.title }}</a>
                {% if latest.excerpt %}
                <p class="mt-2 text-sm text-gray-600">{{ latest.excerpt | strip_html | truncate:120 }}</p>
                {% elsif latest.description %}
                <p class="mt-2 text-sm text-gray-600">{{ latest.description }}</p>
                {% endif %}
                <div class="mt-3 text-xs text-gray-400">{{ latest.date | date: "%Y年%m月%d日" }}</div>
                {% else %}
                <div class="mt-2 text-gray-600">投稿がありません</div>
                {% endif %}
            </div>

            <div class="bg-white rounded-lg p-4 shadow">
                <div class="text-sm font-semibold text-gray-700">Featured Project</div>
                <div class="mt-2 text-gray-600">静的サイトジェネレータを使ったポートフォリオ構築</div>
                <div class="mt-3 text-xs text-gray-400">React / Tailwind</div>
            </div>
        </div>
    </div>
</section>

<!-- Blog preview -->
<section class="mt-12">
    <div class="flex items-center justify-between">
        <h2 class="text-2xl font-bold">Latest Posts</h2>
        <a href="/blog/" class="text-primary hover:underline">すべて見る →</a>
    </div>

    <div class="mt-4 grid md:grid-cols-3 gap-6">
        {% for post in site.posts limit:3 %}
        <article class="bg-white rounded-lg shadow p-5">
            <a class="text-xl font-semibold hover:underline" href="{{ post.url | relative_url }}">{{ post.title }}</a>
            {% if post.excerpt %}
            <p class="mt-2 text-sm text-gray-600">{{ post.excerpt | strip_html | truncate:160 }}</p>
            {% elsif post.description %}
            <p class="mt-2 text-sm text-gray-600">{{ post.description }}</p>
            {% endif %}
            <div class="mt-4 text-xs text-gray-400">{{ post.date | date: "%Y年%m月%d日" }}</div>
        </article>
        {% endfor %}
    </div>
</section>

<!-- Portfolio preview -->
<section class="mt-12">
    <div class="flex items-center justify-between">
        <h2 class="text-2xl font-bold">Portfolio</h2>
        <a href="/portfolio/" class="text-primary hover:underline">全ての作品 →</a>
    </div>

    <div class="mt-4 grid sm:grid-cols-2 lg:grid-cols-3 gap-6">
        <div class="bg-white rounded-lg shadow overflow-hidden">
            <div class="h-40 bg-gray-200 flex items-center justify-center text-gray-400">Project Image</div>
            <div class="p-4">
                <div class="font-semibold">Project A</div>
                <div class="text-sm text-gray-600 mt-2">静的サイト、Tailwind、Github Pages にデプロイ。</div>
            </div>
        </div>

        <div class="bg-white rounded-lg shadow overflow-hidden">
            <div class="h-40 bg-gray-200 flex items-center justify-center text-gray-400">Project Image</div>
            <div class="p-4">
                <div class="font-semibold">Project B</div>
                <div class="text-sm text-gray-600 mt-2">React アプリ、認証と API 連携。</div>
            </div>
        </div>

        <div class="bg-white rounded-lg shadow overflow-hidden">
            <div class="h-40 bg-gray-200 flex items-center justify-center text-gray-400">Project Image</div>
            <div class="p-4">
                <div class="font-semibold">Project C</div>
                <div class="text-sm text-gray-600 mt-2">小規模チームでの開発と CI/CD 設定。</div>
            </div>
        </div>
    </div>
</section>

<!-- Contact -->
<section id="contact" class="mt-12 bg-white rounded-lg p-6 shadow">
    <h3 class="text-xl font-semibold">Contact</h3>
    <p class="mt-2 text-gray-600">仕事の依頼・お問い合わせは以下リンクからどうぞ。</p>
    <div class="mt-4 flex flex-wrap gap-3">
        <a class="px-4 py-2 bg-accent text-white rounded-md" href="mailto:example@example.com">メールを送る</a>
        <a class="px-4 py-2 border border-gray-200 rounded-md" href="https://github.com/nao2bs"
            target="_blank">GitHub</a>
    </div>
</section>