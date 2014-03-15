class BlogsController < ApplicationController
  def index
    @sites = Site.where(category: "blogs")
    render "sites/index"
  end
end

