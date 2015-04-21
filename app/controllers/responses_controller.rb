class ResponsesController < ApplicationController
  def index
  end

  def show
    @user_selection = Response.find(params[:id])
  end

  def new
    @quote = Quote.all.sample
    @response = Response.new(quote: @quote)
    @emotions = Emotion.all
    binding.pry
  end

  def create
    @emotional_response = Response.new(response_params)

    if @emotional_response.save
      redirect_to @emotional_response
    else
      render :new
    end
  end

private
  def response_params
    params.require[:response].permit(:quote_id, :emoji_id)
  end
end
