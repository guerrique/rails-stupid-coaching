class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.downcase == "i am going to work right now!"
      @answer = "Great!"
    elsif @question[-1] != "?"
      @answer = "I don't care, get dressed and go to work!"
    elsif @question[-1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    end
  end
end



# def coach_answer(your_message)
#   # TODO: return coach answer to your_message
#   if your_message == "I am going to work right now!"
#     return ""
#   elsif your_message[-1] != "?"
#     return "I don't care, get dressed and go to work!"
#   elsif your_message[-1] == "?"
#     return "Silly question, get dressed and go to work!"
#   end
# end
