class ResidenciesController < ApplicationController
  def index
    @residencies = Residency.all.by_state
  end

  def import
    Residency.import(params[:file])
    redirect_to residencies_path
  end
end
