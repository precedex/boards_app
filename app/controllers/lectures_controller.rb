class LecturesController < ApplicationController
  def index
    @lectures = Lecture.all
  end

  def import
    Lecture.import(params[:file])
    redirect_to root_url, notice: "Lectures imported."
  end
end
