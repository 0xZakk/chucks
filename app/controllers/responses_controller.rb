class ResponsesController < ApplicationController


  def index
  end

  def show
    # Quote.find()
    redirect_to('responses/show')


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
