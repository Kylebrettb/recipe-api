class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :recipe


  validates_presence_of :recipe_id, :user_id
end
