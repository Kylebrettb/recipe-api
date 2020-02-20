class Genre < ApplicationRecord
  has_many :recipe


  validates_presence_of: recipe
end
