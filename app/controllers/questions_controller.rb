class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ""
    @question = params[:member]
    @answer = coach_answers(@question.downcase)
  end

  def coach_answers(questions)
    if questions == 'i am going to work'
      @answer = 'Great!'
    elsif questions.last == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
