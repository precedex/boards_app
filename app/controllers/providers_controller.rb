class ProvidersController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    if params[:last].blank? && params[:hospital].blank? && params[:employer].blank? && params[:state].blank?
      @providers = []
    elsif params[:provider_type] == "crna"
      @providers = Provider.where(nil)
      @providers = @providers.where(primary: "CERTIFIED REGISTERED NURSE ANESTHETIST")
      @providers = @providers.lname(params[:last]) if params[:last].present?
      @providers = @providers.hospital(params[:hospital]) if params[:hospital].present?
      @providers = @providers.employer(params[:employer]) if params[:employer].present?
      @providers = @providers.state(params[:state]) if params[:state].present?
      @providers = @providers.sort_by(&:"#{sort_column}")
      @providers = @providers.reverse if sort_direction == 'desc'
    elsif params[:provider_type] == "md"
      @providers = Provider.where(nil)
      @providers = @providers.where(primary: "ANESTHESIOLOGY")
      @providers = @providers.lname(params[:last]) if params[:last].present?
      @providers = @providers.hospital(params[:hospital]) if params[:hospital].present?
      @providers = @providers.employer(params[:employer]) if params[:employer].present?
      @providers = @providers.state(params[:state]) if params[:state].present?
      @providers = @providers.sort_by(&:"#{sort_column}")
      @providers = @providers.reverse if sort_direction == 'desc'
    elsif params[:provider_type] == "aa"
      @providers = Provider.where(nil)
      @providers = @providers.where(primary: "ANESTHESIOLOGY ASSISTANT")
      @providers = @providers.lname(params[:last]) if params[:last].present?
      @providers = @providers.hospital(params[:hospital]) if params[:hospital].present?
      @providers = @providers.employer(params[:employer]) if params[:employer].present?
      @providers = @providers.state(params[:state]) if params[:state].present?
      @providers = @providers.sort_by(&:"#{sort_column}")
      @providers = @providers.reverse if sort_direction == 'desc'    
    end
    
    @datasets = "https://data.medicare.gov/data/physician-compare"
    @medicare = "https://data.medicare.gov"
  end
    
  def import
    Provider.import(params[:file])
    redirect_to providers_path
  end

  def sort_column
    Provider.column_names.include?(params[:sort]) ? params[:sort] : "last"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
   
end