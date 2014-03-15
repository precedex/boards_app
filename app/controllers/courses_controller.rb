class CoursesController < ApplicationController
  def index
    @sites = sites_by_category 'education'
    render "sites/index"
  end

  def show
    @sites = sites_by_category "education-#{params[:id]}"
    render "sites/index"
  end

  private

  def sites_by_category(category)
    Site.where(category: category).by_title
  end
end

