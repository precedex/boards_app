class SitesController < ApplicationController
  before_action :set_site, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with :name => "menatesto", :password => "lysinezinc", except: :index

  def index
    if params[:category].nil?
      params[:category] = "All site"
      @sites = Site.by_title
    else
      @sites = Site.where(category: params[:category]).by_title
      if params[:category] == "blog"
      @sites1 = Site.where(category: params[:category]).where(rec: "1").by_title
      @sites2 = Site.where(category: params[:category]).where(rec: "0")
      @sites3 = Site.where(category: params[:category]).where(rec: nil)
      @sites = @sites1 + @sites2 + @sites3
      
      end  
    end
  end

  def show
  end

  # GET /sites/new
  def new
    @site = Site.new
  end

  def edit
  end

  def create
    @site = Site.new(site_params)

    respond_to do |format|
      if @site.save
        format.html { redirect_to @site, notice: 'Site was successfully created.' }
        format.json { render action: 'show', status: :created, location: @site }
      else
        format.html { render action: 'new' }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sites/1
  # PATCH/PUT /sites/1.json
  def update
    respond_to do |format|
      if @site.update(site_params)
        format.html { redirect_to @site, notice: 'Site was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sites/1
  # DELETE /sites/1.json
  def destroy
    @site.destroy
    respond_to do |format|
      format.html { redirect_to sites_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site
      @site = Site.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_params
      params.require(:site).permit(:category, :title, :image, :rec, :description, :link)
    end
end
