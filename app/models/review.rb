class Review < ApplicationRecord
  has_many :users
  has_many :recipe


  validates_presence_of: users,recipe
end
