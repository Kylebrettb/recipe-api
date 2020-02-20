class Recipe < ApplicationRecord
  belongs_to :course


  validates_presence_of: course
end
