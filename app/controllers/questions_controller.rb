class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with :name => "menatesto", :password => "lysinezinc", except: [:index, :random]
  def index
          
      # Questions that match search query                 
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
      
      @questions_matchsearch = @questions_stems | @questions_choices 

      # Questions that match exam type (BASIC vs ADVANCED vs uncategorized)
      if params[:exam] == '1'
        @questions_basic = Question.basic
        @questions_advanced = []
        @questions_uncategorized = []
      elsif params[:exam] == '2'
        @questions_advanced = Question.advanced
        @questions_basic = []
        @questions_uncategorized = []
      elsif params[:exam] == '3'
        @questions_uncategorized = Question.uncategorized
        @questions_basic = []
        @questions_advanced = []  
      elsif params[:exam] == '4'
        @questions_basic = Question.basic
        @questions_advanced = Question.advanced
        @questions_uncategorized = [] 
      end
      
      @questions_matchexam = @questions_basic | @questions_advanced | @questions_uncategorized
      
      # Questions that match topic
      if params[:topic_id] == '11'
        @questions_topic = Question.all
      elsif params[:topic_id]
        @questions_topic = Topic.find(params[:topic_id]).questions 
      else 
        @questions_topic = []
      end
    
      unless params[:exam]
        @questions = @questions_topic.shuffle.uniq
      else
        @questions = @questions_matchsearch & @questions_matchexam & @questions_topic
      end
      
      # Shuffle if shuffle is checked    
      @questions = @questions.shuffle.uniq if params[:shuffle_checkbox] == '1'

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
      params.require(:question).permit(:stem, :option_a, :option_b, :option_c, :option_d, :option_e, :answer, :image, :exam, topic_ids: [])
    end
end
