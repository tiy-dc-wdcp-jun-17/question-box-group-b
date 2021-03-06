class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question = @question

    respond_to do |format|
      if @answer.save
        # this may not be correct, but we want to redirect to the question view that that answer is responding to.
        format.html { redirect_to question_url(@question) }
        format.json { render :show, status: :created, title: @answer }
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @answer.update(answer_params)
        # this may not be correct, but we want to redirect to the question view that that answer is responding to.
        format.html { redirect_to @question, notice: 'Answer was successfully updated.' }
        format.json { render :show, status: :ok, title: @answer }
      else
        format.html { render :edit }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:body)
  end

end
