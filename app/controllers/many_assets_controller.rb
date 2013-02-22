require 'base64'

class ManyAssetsController < ApplicationController
  def index
    @num_wide = 20
    @num_high = 20
    @icons = Icon.limit(@num_wide * @num_high).includes(:web_site)
  end

  def display
    icon = Icon.find(params[:id])
    render :text => icon.icon, :content_type => "image/x-icon", :layout => false
  end
end
