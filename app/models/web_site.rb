class WebSite < ActiveRecord::Base
  attr_accessible :rank, :snippet, :url
  has_one :page_content
  has_one :icon
end
