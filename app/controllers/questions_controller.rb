class QuestionsController < ApplicationController
  def ask
    
  end
  
  def answer
    @member = params[:member].capitalize

    if @member == "I am going to work"
      @placeholder = "Great!"
    elsif @member&.end_with?("?")
      @placeholder = "Silly question, get dressed and go to work!"
    else
      @placeholder = "I don't care, get dressed and go to work!"
    end
  end
end
