class LecturesController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    @lectures = Lecture.search(params[:search])
    @lectures = @lectures.sort_by(&:"#{sort_column}") unless "#{sort_column}" == "date"
    @lectures = @lectures.reverse if sort_direction == 'desc'
  end

  def import
    Lecture.import(params[:file])
    redirect_to lectures_path
  end

  def sort_column
    Lecture.column_names.include?(params[:sort]) ? params[:sort] : "speaker"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
 
end