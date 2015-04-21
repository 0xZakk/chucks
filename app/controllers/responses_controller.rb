require 'pry'
class ResponsesController < ApplicationController
<<<<<<< HEAD


=======
>>>>>>> 13a65b907a287dafc1f593f7608becf7c6c5038d
  def index
  end

  def show
<<<<<<< HEAD
    # Quote.find()

    @response = Response.find(params[:id])

    # redirect_to('responses/show')

    @response_emotion = Emotion.find(@response.emoji_id)

    # binding.pry
  end

  def new

=======
    @user_selection = Response.find(params[:id])
  end

  def new
    @quote = Quote.all.sample
    @response = Response.new
    @emotions = Emotion.all
>>>>>>> 13a65b907a287dafc1f593f7608becf7c6c5038d
  end


  def create
    @emotional_response = Response.new(response_params)
    if @emotional_response.save
      redirect_to @emotional_response
    else
      render :new
    end
  end

<<<<<<< HEAD
# private
#
#   def response_params
#     params.require(:response).permit(:)
#   end
=======
private
  def response_params
    return params.require[:response].permit(:quote_id, :emoji_id)
  end
>>>>>>> 13a65b907a287dafc1f593f7608becf7c6c5038d
end
