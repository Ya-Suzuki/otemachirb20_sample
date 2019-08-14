class User < ApplicationRecord
  # プロフィール
  has_one :profile, dependent: :destroy
  # 住所
  has_one :address, dependent: :destroy
  # 有効ユーザー（導出テーブル）
  has_one :active, dependent: :destroy
  # 退会ユーザー（導出テーブル）
  has_one :withdrawal, dependent: :destroy
  # 記事
  has_many :articles, dependent: :destroy

  delegate :name, :user_name, to: :profile
end
