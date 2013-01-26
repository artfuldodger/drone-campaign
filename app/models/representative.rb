class Representative < ActiveRecord::Base
  belongs_to :state
  validates :name, :state, presence: true

  attr_accessible :district, :leader, :name, :title, :url, :state
end
