class Review < ApplicationRecord
  has_many :users
  has_many :recipes


  validates_presence_of :user_id, :recipe_id
end
