class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
  end

  def ask
  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message == "Speak to your coach"
    elsif your_message.strip.end_with? "?"
      @answer = "Hello"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
