class Character < ActiveRecord::Base
  belongs_to :games
  validates :char_name, :presence => true
end
