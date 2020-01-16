class Api::ParamsExamplesController < ApplicationController
  def query_params
    @my_name = params["my_name"]
      if @my_name[0].upcase == "A"
      @new_message = "Hey, your name starts with the first letter of the alphabet!"
      end 
    render 'query_params.json.jb'
  end 

   def guess_query
    @guess = params[:message].to_i
    hidden_number = 42

    if @guess > hidden_number
      @message = "Woah, too high, Go lower!"
    elsif @guess < hidden_number
      @message = "Come up a bit, guess higher next time."
    else
      @message = "and that number was just right."
    end 
    render 'guess_query.json.jb'
  end
end
