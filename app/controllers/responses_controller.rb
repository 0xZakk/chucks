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
    @current_topic = @response_quote.topic

<<<<<<< HEAD

=======
>>>>>>> fc9e90d4bd09a1656b70b4ae11845760b080885e
    @wiki_link = HTTParty.get("http://en.wikipedia.org/w/api.php?format=json&action=query&titles=#{@current_topic}&prop=revisions&rvprop=content")
    page_key = @wiki_link["query"]["pages"].keys[0]
    redirection_value = @wiki_link["query"]["pages"][page_key]["revisions"][0]["*"]

    if redirection_value.scan("#REDIRECT") == ["#REDIRECT"]
      redirect_topic = redirection_value.scan(/(?<=\[)[^\[.]+?(?=\])/).first
      @redirect_wiki_link = "http://en.wikipedia.org/wiki/#{redirect_topic}"
      blurb_extract = HTTParty.get("http://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro=&explaintext=&titles=#{redirect_topic}")
    else
      @redirect_wiki_link = "http://en.wikipedia.org/wiki/#{@current_topic}"
      blurb_extract = HTTParty.get("http://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro=&explaintext=&titles=#{@current_topic}")
    end
# changed all https to http
    blurb_key = blurb_extract["query"]["pages"].keys[0]

    @blurb = blurb_extract["query"]["pages"][blurb_key]["extract"]

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
