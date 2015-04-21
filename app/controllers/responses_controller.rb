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

    @user_selection = Response.find(params[:id])
  end

  def new
    @quote = Quote.all.sample
    @response = Response.new
    @emotions = Emotion.all
  end


  def create
    @emotional_response = Response.new(response_params)
    if @emotional_response.save
      redirect_to @emotional_response
    else
      render :new
    end
  end

# private
#
#   def response_params
#     params.require(:response).permit(:)
#   end
private
  def response_params
    return params.require[:response].permit(:quote_id, :emoji_id)
  end
end
