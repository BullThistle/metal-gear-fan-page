class Character < ActiveRecord::Base
  belongs_to :games
  validates :name, :presence => true
end
