class State < ActiveRecord::Base
  validates :name, :abbreviation, presence: true

  attr_accessible :abbreviation, :ansi_code, :name, :statens
end
