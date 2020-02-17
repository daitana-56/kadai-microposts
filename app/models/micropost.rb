class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  #参照
  has_many :favorites, dependent: :destroy
  has_many :favoriteuser, through: :favorites, source: :user
end
