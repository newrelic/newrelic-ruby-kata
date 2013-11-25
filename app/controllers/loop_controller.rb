class LoopController < ApplicationController
  def index
    @sites = WebSite.limit(1000)
  end
end
