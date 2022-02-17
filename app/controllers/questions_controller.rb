class QuestionsController < ApplicationController
  def show
    @question = Question.find_by id: params[:id]
  end
  
  def destroy
    @question = Question.find_by id: params[:id]
    @question.destroy
    redirect_to questions_path
  end
  def edit
    @question = Question.find_by id: params[:id]
  end

  def update
    @question = Question.find_by id: params[:id]
    if @question.update question_params
      redirect_to questions_path #redirect to qestions paths
    else
      render :edit #show new.html.erb
    end
  end

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new question_params          #render plain: params #plain -show simple text , params -object
    if @question.save
      redirect_to questions_path #redirect to qestions paths
    else
      render :new #show new.html.erb
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :body)
  end
end
