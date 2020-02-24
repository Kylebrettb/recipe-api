class Favorite < App
  belongs_to :user
  belongs_to :recipe


  validates_presence_of: recipe
end
