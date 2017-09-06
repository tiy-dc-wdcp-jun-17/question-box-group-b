class UserController < ApplicationController

  def index
    #code
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
