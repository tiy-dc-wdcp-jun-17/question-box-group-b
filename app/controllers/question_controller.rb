class QuestionController < ApplicationController
  def index
    @questions = Question.page(1).per(10)
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
