# アプリケーション名
創作者向け作品分析用webアプリケーション『Aristotelēs』
# アプリケーション概要
このアプリケーションは、創作者（小説やシナリオなど、物語を作る人）を主な対象として作品分析のサポートをします。<br>
読んだ小説や観た映画など、インプットした作品のストーリーについて質問に答えていくとその作品の構成を視覚化して整理できます。<br>
自分が触れた作品を良く理解し、自分の物語づくりに活かしていく。このサイクルをサポートすることがAristotelēsの目的です。

# URL
http://52.196.172.173
# テスト用アカウント
### Basic認証<br>
ID: horatius<br>
PW: 6049<br>
### テストアカウント<br>
email: plato@test.com<br>
PW: plato12

# 利用方法

# アプリケーションを作成した背景

# 実装した機能についての画像やGIFおよびその説明

# 実装予定の機能

# データベース設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |

### Association
- has_many :stories, dependent: :destroy

## stories テーブル

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| title     | string     | null: false |
| genre_id  | integer    | null: false |
| medium_id | integer    | null: false |
| user      | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :beat_sheet_answers, dependent: :destroy

## beat_sheet_questions テーブル

| Column  | Type       | Options     |
| ------- | ---------- | ----------- |
| content | text       | null: false |

### Association
- has_many :beat_sheet_answers, dependent: :destroy

## beat_sheet_answers テーブル

| Column              | Type       | Options     |
| ------------------- | ---------- | ----------- |
| content             | text       | null: false |
| percentage          | integer    | null: false |
| lows_and_highs      | integer    | null: false |
| story               | references | null: false, foreign_key: true |
| beat_sheet_question | references | null: false, foreign_key: true |

### Association
- belongs_to :story
- belongs_to :beat_sheet_question

## ER図
[![Image from Gyazo](https://i.gyazo.com/5be749c25c7bee792360f5ec4228888b.png)](https://gyazo.com/5be749c25c7bee792360f5ec4228888b)

# 画面遷移図

# 開発環境

# ローカルでの動作方法

# 工夫したポイント

# 改善点

# 制作時間