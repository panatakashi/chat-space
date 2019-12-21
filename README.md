# chatspace DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :gruops_users
- has_many :messages, through: :groups_users


## groupsテーブル
|Column|Type|Options|
|------|----|-------|

|user_id|integer|null: false, foreign_key: true|
### Association
- has_many :gruops_users
- has_many :messages, through: :groups_users

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|message|text||
|image|text||
### Association
- belomgs_to :group
- belongs_to :user

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user