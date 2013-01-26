class Signature < ActiveRecord::Base
  validates :name, presence: true
  attr_accessible :email, :name, :newsletter
end
