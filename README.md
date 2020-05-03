# README

postsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
|content|text||
|image|string||
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user

usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, add_index:true|
|email|string|null: false,unique:true|
|password|string|null: false|

### Association
- has_many :posts

