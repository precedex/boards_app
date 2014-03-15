class CoursesController < ApplicationController
  def index
    @sites = Site.where(category: 'education')
    render "sites/index"
  end

  def show
    @sites = Site.where(category: "education-#{params[:id]}")
    render "sites/index"
  end
end

