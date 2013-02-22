class BigListController < ApplicationController
  def index
    @all_sites = WebSite.all
    @first_site = @all_sites.first
  end
end
