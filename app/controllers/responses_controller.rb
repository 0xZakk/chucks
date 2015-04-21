require 'pry'
class ResponsesController < ApplicationController


  def index
  end

  def show
    # Quote.find()

    @response = Response.find(params[:id])

    # redirect_to('responses/show')

    @response_emotion = Emotion.find(@response.emoji_id)

    # binding.pry
  end

  def new

  end


  def create

  end

# private
#
#   def response_params
#     params.require(:response).permit(:)
#   end
end
