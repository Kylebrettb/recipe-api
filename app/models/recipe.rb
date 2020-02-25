class Recipe < ApplicationRecord
  belongs_to :course
  belongs_to :genre
  belongs_to :created_by


  validates_presence_of :course_id, :genre_id, :created_by
end
#hello tucker
