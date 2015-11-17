class ProvidersController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    @providers = Provider.search(params[:search])
    @providers = @providers.sort_by(&:"#{sort_column}")
    @providers = @providers.reverse if sort_direction == 'desc'
    
    @datasets = "https://data.medicare.gov/data/physician-compare"
    @medicare = "https://data.medicare.gov"
  end

  def import
    Provider.import(params[:file])
    redirect_to providers_path
  end

  def sort_column
    Provider.column_names.include?(params[:sort]) ? params[:sort] : "last"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
   
end