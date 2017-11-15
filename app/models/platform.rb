class Platform < ActiveRecord::Base
  has_and_belongs_to_many :games
  validates :console, :presence => true
end
