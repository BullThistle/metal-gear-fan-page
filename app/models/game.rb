class Game < ActiveRecord::Base
  has_and_belongs_to_many :platforms, :characters
  validates :name, :presence => true
end
