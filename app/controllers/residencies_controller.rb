class ResidenciesController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    #@residencies = Residency.all.order(sort_column + " " + sort_direction)
    @residencies = Residency.all
  end

  def import
    Residency.import(params[:file])
    redirect_to residencies_path
  end
end

private

def sort_column
  Residency.column_names.include?(params[:sort]) ? params[:sort] : "state"
end

def sort_direction
  %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
end
 