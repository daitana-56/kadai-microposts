class User < ApplicationRecord
  #email小文字変換
  before_save { self.email.downcase! }
  
  #バリデーション
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255},
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  
  #パスワード用の設定
  has_secure_password
  
  #参照
  has_many :microposts
end
