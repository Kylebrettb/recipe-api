class Recipe < ApplicationRecord
  belongs_to :course
  belongs_to :genre
  belongs_to :created_by


  validates_presence_of: course
end
#hello tucker
