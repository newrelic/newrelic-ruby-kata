class BigListController < ApplicationController
  def index
    @all_sites = WebSite.all.to_a
    @first_site = @all_sites.first
  end
end
