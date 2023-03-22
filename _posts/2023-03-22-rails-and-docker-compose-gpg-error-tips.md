---
layout: post
title: Rails + docker-composeのGPGエラー
date:   2023-03-22
description: Railsのプロジェクトのdocker環境でGPGエラーが出たのをやっと解決しました。
tags: rails docker
categories: tips
---

Rails4の環境をdocker-composeで再構築した際にapt updateでGPGエラーが起きました。  
なるべくオフィシャルのイメージを使いたかったので、こちらのコマンドでエラーを解決しました。

Dockerfile
```
FROM ruby:2.4.1

RUN apt-get update -qq & apt-get install <パッケージ名> -y --force-yes

```

ここでのポイントは -y --force-yesです。
これでインストールを実行できると思います。
