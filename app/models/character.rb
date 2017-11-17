class Character < ActiveRecord::Base
  has_and_belongs_to_many :games
  validates :char_name, :presence => true
end
