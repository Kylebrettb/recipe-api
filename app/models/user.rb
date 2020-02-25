class User < ApplicationRecord
  has_many :reviews
  has_many :recipes
  has_many :favorites


  validates_presence_of :name, :email
end
