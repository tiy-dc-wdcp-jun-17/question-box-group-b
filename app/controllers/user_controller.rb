<<<<<<< HEAD:app/controllers/user_controller.rb
class UserController < ApplicationController

  def index
    #code
=======
class QuestionController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def index
     @questions = Question.page(1).per(10)
>>>>>>> Index and Show views commited for rebase from master:app/controllers/question_controller.rb
  end

  def edit
    #code
  end

  def show
    #code
  end

  def destroy
    #code
  end

  def new
    #code
  end

  def create
    #code
  end

  def update
    #code
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

end
