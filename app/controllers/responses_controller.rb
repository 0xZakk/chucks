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
  end

  def new
    @response = Response.new
    
    @response_quote = Quote.retrieve_quote(params[:topic_filter])
    @emotions = Emotion.all
  end

  def create
    @response = Response.new(response_params)

    if @response.save
      redirect_to @response
    else
      render :new
    end
  end

private
  def response_params
    params.require(:response).permit(:emotion_id, :quote_id)
  end

end
