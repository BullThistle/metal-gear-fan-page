class Platform < ActiveRecord::Base
  validates :console, :presence => true
end
