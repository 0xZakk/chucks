class ResponsesController < ApplicationController


  def index
    @response = Response.new
  end

  def show
    @response = Response.find(params[:id])
    # redirect_to('responses/show')

    @response_emotion = Emotion.find(@response.emotion_id)

    @quote = Quote.find(@response.quote_id)
    @responses = Response.all
      # binding.pry
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
    # binding.pry
  end

private
  def response_params
    params.require(:response).permit(:emotion_id, :quote_id)
  end
end
