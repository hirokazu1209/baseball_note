# README

## users テーブル

| Column            | Type   | Options     |
| ----------------- | ------ | ----------- |
| name              | string | null: false |
| nickname          | string | null: false |
| email             | string | null: false |
| password          | string | null: false |
| pitching_batting  | string | null: false |
| position          | string | null: false |
| profile           | string | null: false |

### Association

- has_many :articles
- has_many :comments
- has_many :records



## articles テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| post    | text       | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments
- has_many_attached :videos
- has_one_attached :image



## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| comment | text       | null: false, foreign_key: true |
| user    | references | null: false, foreign_key: true |
| article | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :article



## records テーブル

| Column        | Type   | Options     |
| ------------- | ------ | ----------- |
| practice_time | string | null: false |
| ball          | string | null: false |
| check         | text   |             |
| content       | text   |             |

### Association

- belongs_to :user

## アプリケーション名

べ〜すぼ〜るノート

## アプリケーション概要

日々の練習の成果を記録し、練習内容を可視化するアプリ

## URL

デプロイ済みのURLを記述。デプロイが済んでいない場合は、デプロイが完了次第記述すること。

## テスト用アカウント

ログイン機能等を実装した場合は、ログインに必要な情報を記述。
またBasic認証等を設けている場合は、そのID/Passも記述すること。

## 利用方法

このアプリケーションの利用方法を記述。

## 目指した課題解決

対象：草野球の試合でヒーローを目指す全ての草野球人
効果：草野球人達の練習記録を本アプリで取る事で、以下の効果が期待出来る
　　　①バッティングにおける現状の課題や癖の傾向を把握出来る
　　　②努力の成果を可視化する事で、モチベーション低下の防止に繋げる
　　　③草野球の試合で活躍出来ないとは言わせない

## 洗い出した要件

スプレッドシートにまとめた要件定義を記述。

## 実装した機能についての画像やGIFおよびその説明

実装した機能について、それぞれどのような特徴があるのかを列挙する形で記述。
画像はGyazoで、GIFはGyazoGIFで撮影すること。

## 実装予定の機能

・記録機能（試合用）
・投稿機能（いいね！／動画）

## データベース設計

ER図等を添付。

## ローカルでの動作方法

git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述。
この時、アプリケーション開発に使用した環境を併記することを忘れないこと（パッケージやRubyのバージョンなど）。

