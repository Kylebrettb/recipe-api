class Course < ApplicationRecord
  has_many :recipes

   validates_presence_of: recipe
end
