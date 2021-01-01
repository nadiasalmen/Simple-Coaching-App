class QuestionsController < ApplicationController
  def ask
  end

  def answer
    a = 'Great!'
    b = 'Silly question, get dressed and go to work!'
    c = "I don't care, get dressed and go to work!"
    @question = params[:question]
    if @question == 'I am going to work right now!'
      @answer = a
    elsif @question.end_with?('?')
      @answer = b
    else
      @answer = c
    end
  end
end
