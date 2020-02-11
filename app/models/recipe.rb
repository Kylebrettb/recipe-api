class Recipe < ApplicationRecord
  has_many :Course
  has_many :Genres
end
