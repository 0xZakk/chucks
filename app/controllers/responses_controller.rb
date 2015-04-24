class ResponsesController < ApplicationController


  def index
    @quote = Quote.all
    @response = Response.new

  end

  def show
    @response = Response.find(params[:id])
    @response_quote = @response.quote
    @responses = Response.all
    @response_emotion = @response.emotion
    # binding.pry
  end

  def new
    @response = Response.new
    find_quote = Quote.retrieve_quote(params[:category_filter])
    @response_quote = find_quote.sample
    @emotions = Emotion.all
    # binding.pry
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
    params.require(:response).permit(:emotion_id, :quote_id)
  end

end
