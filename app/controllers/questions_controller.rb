class QuestionsController < ApplicationController
  def ask
    # emtpy
  end

  def answer
    @question = params[:question]

    if @question.nil?
      @answer = "Please ask a question"
    elsif @question.downcase == "hello"
      @answer = "hello too"
    elsif @question.downcase == "what time is it?"
      @answer = Time.now.strftime("%I:%M:%S %p")
    elsif @question == "I am going to work"
      @answer = "Great!"
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
