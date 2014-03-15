class SocietiesController < ApplicationController
  def show
    @sites = Site.where(category: "societies-#{params[:id]}")
    render "sites/index"
  end
end

