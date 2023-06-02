class ComicsController < ApplicationController

  def index
    @comics = Comic.all
    render json: @comics.as_json
  end

  def create
    @comic = Comic.create(
      title: params[:title],
      image: params[:image],
    )
    render json: @comic.as_json
  end
end
