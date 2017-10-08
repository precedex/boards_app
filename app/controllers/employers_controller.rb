class EmployersController < ApplicationController
  helper_method :sort_column, :sort_direction
  
  def index
    
      @employers_bystate = Employer.by_state(params[:state])
      @employers_byname = Employer.by_name(params[:name_lgl])
      @employers = @employers_bystate & @employers_byname
      @employers = @employers.sort_by(&:"#{sort_column}")
      @employers = @employers.reverse if sort_direction == 'desc'
    
    @datasets = "https://data.medicare.gov/data/physician-compare"
    @medicare = "https://data.medicare.gov"
  end
    
  def import
    Employer.import(params[:file])
    redirect_to employers_path
  end

  def sort_column
    Employer.column_names.include?(params[:sort]) ? params[:sort] : "n_employees"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
  end
   
end
