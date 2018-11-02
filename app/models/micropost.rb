class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :reverses_of_favorite, class_name: 'Favorite'
  
  validates :user_id, presence:true
  validates :content, presence:true, length: { maximum: 255 }
end
