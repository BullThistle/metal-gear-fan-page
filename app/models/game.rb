class Game < ActiveRecord::Base
  has_and_belongs_to_many :platforms
  has_and_belongs_to_many :characters
  validates :name, :presence => true
end
