---
layout: post
title: "Ruby on Railsブログシステム"
date: 2026-07-21
description: ""
categories: [Ruby]
---

# 💻 【Ruby on Railsブログシステム】
GitHub pagesを活用し、手軽に更新や閲覧ができることを重要視しました。 

## 📝 概要
リモートワークにおけるチーム内のタスク漏れを防止するための、Webベースのタスク管理アプリケーションです。個人開発として、設計からデプロイまでを1人で行いました。


## 🛠 使用技術
フロントエンド: HTML / CSS / Tailwind CSS
バックエンド: Ruby
データベース: 特になし
インフラ・デプロイ: GitHub Pages 
その他: GitHub Actions (CI/CD)
機能面での参考にしたテンプレート: https://github.com/jeffreytse/jekyll-theme-yat

## ✨ 技術的な工夫

フロントエンドからバックエンドの通信までTypeScriptで一気通貫の型定義を行い、コンパイル時点でバグを検知できる設計にしました。コンポーネントの再利用性: Atomic Designの思想を一部取り入れ、ボタンやフォームなどの共通パーツを疎結合にモジュール化し、拡張性を意識しました。自動化の導入: GitHub Actionsを活用し、mainブランチへのプルリクエスト時に自動でLinterとテストが走り、パスした場合のみ自動デプロイされる仕組みを構築しました。


## 🔥 課題と解決プロセス【課題】 
データ量が増えた際、タスク一覧画面の初期読み込み速度が大幅に低下する問題が発生しました。【解決策】 ブラウザのデベロッパーツールで調査したところ、不要な再レンダリングと、データベースへのN+1問題が原因だと判明しました。フロント側でuseMemoを用いたキャッシュ最適化を行い、バックエンド側ではPrismaのinclude句を見直して一括取得に変更。結果として、ページの表示速度を約60%高速化させました。

## 🔗 リンク公開URL: https://vercel.app 
(テストアカウント：test@example.com / pass: 123456)
GitHub: https://github.com