class ComicsController < ApplicationController

  def index
    @comics = Comic.all
    render json: @comics.as_json
  end
end
