class Icon < ActiveRecord::Base
  belongs_to :web_site
  attr_accessible :height, :icon, :width
end
