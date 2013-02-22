class Car < ActiveRecord::Base
  attr_accessible :make
  has_many :drivers
end
