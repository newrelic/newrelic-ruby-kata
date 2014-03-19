class Driver < ActiveRecord::Base
  belongs_to :car

  delegate :make, :to => :car
end
