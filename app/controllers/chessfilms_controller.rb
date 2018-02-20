class ChessfilmsController < ApplicationController
  before_action :set_chessfilm, only: [:show, :edit, :update, :destroy]

  def index
      @chessfilms = Chessfilm.by_title
  end

  def show
  end

  # GET /chessfilms/new
  def new
    @chessfilm = Chessfilm.new
  end

  def edit
  end

  def create
    @chessfilm = Chessfilm.new(chessfilm_params)

    respond_to do |format|
      if @chessfilm.save
        format.html { redirect_to @chessfilm, notice: 'Chessfilm was successfully created.' }
        format.json { render action: 'show', status: :created, location: @chessfilm }
      else
        format.html { render action: 'new' }
        format.json { render json: @chessfilm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chessfilms/1
  # PATCH/PUT /chessfilms/1.json
  def update
    respond_to do |format|
      if @chessfilm.update(chessfilm_params)
        format.html { redirect_to @chessfilm, notice: 'Chessfilm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @chessfilm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chessfilms/1
  # DELETE /chessfilms/1.json
  def destroy
    @chessfilm.destroy
    respond_to do |format|
      format.html { redirect_to chessfilms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chessfilm
      @chessfilm = Chessfilm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chessfilm_params
      params.require(:chessfilm).permit(:title, :year, :time, :director, :image, :description, :imdb_link, :trailer_link, :full_link)
    end
end
