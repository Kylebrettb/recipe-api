class Favorite < App
  belongs_to :users
  belongs_to :recipes


  validates_presence_of: recipe
end
