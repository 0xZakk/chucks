class ResponsesController < ApplicationController


  def index
  end

  def show

  end

  def new

  end


  def create

  end

private

  def response_params
    params.require(:response).permit(:)
  end
end
