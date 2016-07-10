class InformaticsController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    @informatics = Informatic.search(params[:search])
    @informatics = @informatics.sort_by(&:"#{sort_column}")
    @informatics = @informatics.reverse if sort_direction == 'desc' 
  end

  def import
    Informatic.import(params[:file])
    redirect_to informatics_path
  end

  def sort_column
    Informatic.column_names.include?(params[:sort]) ? params[:sort] : "section"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
 
end