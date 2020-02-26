class Recipe < ApplicationRecord
  belongs_to :course
  belongs_to :genre
  belongs_to :user
  has_many :reviews


  validates_presence_of :course_id, :genre_id, :user_id
end
#hello tucker
