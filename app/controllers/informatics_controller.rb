class InformaticsController < ApplicationController
  def index      
    @headings = Heading.all
    @subheadings = Subheading.all   
    @subsubheadings = Subsubheading.all
    @subsubsubheadings = Subsubsubheading.all

    @informatics = Informatic.all(:conditions => "section like '#{params[:section_id]}%'")
    @informatics = @informatics.sort! { |a,b| a.section <=> b.section }


    #@informatics = Informatic.search(params[:search])
    
  end
  
  def import
    Informatic.import(params[:file])
    redirect_to informatics_path
  end
  
end