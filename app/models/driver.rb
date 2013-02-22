class Driver < ActiveRecord::Base
  attr_accessible :last_name, :car
  belongs_to :car
  
  delegate :make, :to => :car
end
