class EmployersController < ApplicationController
  helper_method :sort_column, :sort_direction
  
  def index
    @employers_by_state =         Employer.by_state(params[:state])
    @employers_by_name =          Employer.by_name(params[:name_lgl])
    @employers_by_employer_type = Employer.by_employer_type(params[:employer_type])
    @employers = @employers_by_state & @employers_by_name & @employers_by_employer_type
    @employers = @employers.sort_by(&:"#{sort_column}")
    @employers = @employers.reverse if sort_direction == 'desc'
    
    @datasets = "https://data.medicare.gov/data/physician-compare"
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
