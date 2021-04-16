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