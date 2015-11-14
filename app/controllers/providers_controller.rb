class ProvidersController < ApplicationController
  def index
  end

  def import
    Provider.import(params[:file])
    redirect_to providers_path
  end
end
