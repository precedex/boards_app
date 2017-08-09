class JewelsController < ApplicationController
  before_action :set_jewel, only: [:show, :edit, :update, :destroy]

  # GET /jewels
  # GET /jewels.json
  def index
    if params[:collection].nil? 
      @jewels = Jewel.all     
    else
      @jewels = Jewel.where(collection: params[:collection])
    end
  end

  # GET /jewels/1
  # GET /jewels/1.json
  def show
  end

  # GET /jewels/new
  def new
    @jewel = Jewel.new
  end

  # GET /jewels/1/edit
  def edit
  end

  # POST /jewels
  # POST /jewels.json
  def create
    @jewel = Jewel.new(jewel_params)

    respond_to do |format|
      if @jewel.save
        format.html { redirect_to @jewel, notice: 'Jewel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @jewel }
      else
        format.html { render action: 'new' }
        format.json { render json: @jewel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jewels/1
  # PATCH/PUT /jewels/1.json
  def update
    respond_to do |format|
      if @jewel.update(jewel_params)
        format.html { redirect_to @jewel, notice: 'Jewel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @jewel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jewels/1
  # DELETE /jewels/1.json
  def destroy
    @jewel.destroy
    respond_to do |format|
      format.html { redirect_to jewels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jewel
      @jewel = Jewel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jewel_params
      params.require(:jewel).permit(:ID, :name, :image, :collection)
    end
end
