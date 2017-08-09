class JewelsController < ApplicationController

  def index
    if params[:collection].nil? 
      @jewels = Jewel.all     
    else
      @jewels = Jewel.where(collection: params[:collection]).by_sku
    end
  end
  
  def import
    Jewel.import(params[:file])
    redirect_to jewels_path
  end
  
end
