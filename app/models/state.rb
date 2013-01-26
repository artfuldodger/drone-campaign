class State < ActiveRecord::Base
  has_many :representatives

  validates :name, :abbreviation, presence: true
  attr_accessible :abbreviation, :ansi_code, :name, :statens

  def self.with_representative
    joins(:representatives)
  end
end
