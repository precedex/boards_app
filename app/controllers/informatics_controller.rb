class InformaticsController < ApplicationController
  def index      

    params[:section_id] = "1" if params[:section_id].nil?
    
    @subheadings = Subheading.where(heading_id: params[:section_id]).order(:id)   
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