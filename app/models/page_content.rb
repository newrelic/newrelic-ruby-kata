class PageContent < ActiveRecord::Base
  belongs_to :web_site
  attr_accessible :body, :headers
end
