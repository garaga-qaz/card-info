# 名刺情報共有 DB設計


## Teamsテーブル
|Column|Type|Options|
|------|----|-------| 
|name|string|null: false, foreign_key: true| 
|password|integer|null: false, foreign_key: true|
### Association
- has_many: companys 


## Companysテーブル
|Column|Type|Options| 
|------|----|-------| 
|name|string|null: false, foreign_key: true|  
|team_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :team 
- has_many:users


## usersテーブル
|Column|Type|Options| 
|------|----|-------| 
|image|string|null: false, foreign_key: true| 
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :company 
- has_many:comments

## commentsテーブル
|Column|Type|Options| 
|------|----|-------| 
|comment|text|null: false| 
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user


## imagesテーブル
|Column|Type|Options| 
|------|----|-------| 
|comment|text|null: false| 
|url|string|null: false|