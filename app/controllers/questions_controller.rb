class QuestionsController < ApplicationController
  def question

  end

  def answer
    @question_made = params[:question]
    if params[:question] == "I am going to work right now!"
      @coach_response = "Great!"
    elsif params[:question].end_with?("?")
      @coach_response = "Silly question, get dressed and go to work!"
    else
      @coach_response = "I don't care, get dressed and go to work!"
    end
  end
end
