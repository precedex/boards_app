class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def index
    
      if params[:stems_checkbox] == '1'
        @questions_stems   = Question.searchstems(params[:search])
      else
        @questions_stems   = []
      end
    
      if params[:choices_checkbox] == '1'
        @questions_choices = Question.searchchoices(params[:search])
      else
        @questions_choices   = []
      end

      @questions = @questions_stems + @questions_choices
      @questions = @questions.shuffle.uniq
  end
  
  def random
    @questions = Question.random_ten
  end

  def show
  end

  def new
    @question = Question.new
  end

  def edit
  end

  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render action: 'show', status: :created, location: @question }
      else
        format.html { render action: 'new' }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:stem, :option_a, :option_b, :option_c, :option_d, :option_e, :answer, :topic)
    end
end
