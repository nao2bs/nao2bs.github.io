# 基本となる Ruby イメージを指定
FROM ruby:3.2

# 環境変数の設定
ENV JEKYLL_ENV=development

# 必要なパッケージをインストール
RUN apt-get update && apt-get install -y \
  build-essential \
  libffi-dev \
  libgdbm-dev \
  libncurses5-dev \
  libreadline-dev \
  libsqlite3-dev \
  sqlite3 \
  git \
  curl \
  && rm -rf /var/lib/apt/lists/*

# Node.js 20 のインストール
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
  apt-get install -y nodejs

# 作業ディレクトリを作成
WORKDIR /usr/src/app

# Gemfile をコピー
# COPY Gemfile Gemfile.lock ./

# Bundler を使って Ruby の依存関係をインストール
# RUN bundle install

# Jekyll をグローバルにインストール
RUN gem install bundler jekyll

# Jekyll プロジェクトのファイルをコピー
COPY . .

# ディレクトリの所有権を変更
RUN chown -R nobody:nogroup /usr/src/app

# Jekyll サーバーを起動するコマンド
CMD ["bundle", "jekyll", "serve", "--host", "0.0.0.0", "--watch"]

# ポートを公開
EXPOSE 4000

