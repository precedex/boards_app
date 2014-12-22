class LecturesController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    @lectures = Lecture.order(sort_column + " " + sort_direction)
  end

  def import
    Lecture.import(params[:file])
    redirect_to lectures_path
  end
end

private

def sort_column
  Lecture.column_names.include?(params[:sort]) ? params[:sort] : "speaker"
end

def sort_direction
  %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
end
 