class LoopController < ApplicationController
  def index
    @sites = WebSite.includes(:icon).limit(1000)
  end
end
