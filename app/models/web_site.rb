class WebSite < ActiveRecord::Base
  has_one :page_content
  has_one :icon
end
