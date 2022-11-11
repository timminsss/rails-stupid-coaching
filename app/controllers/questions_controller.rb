class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answerArray = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

    if params[:question]
      @question = params[:question]
      if @question == "I am going to work"
        @answer = @answerArray[0]
      elsif @question.include? "?"
        @answer = @answerArray[1]
      else
        @answer = @answerArray[2]
      end
    end
  end
end
