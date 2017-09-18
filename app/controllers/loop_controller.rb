class LoopController < ApplicationController
  def index
    @sites = WebSite.limit(1000).includes(:icon)
  end
end
