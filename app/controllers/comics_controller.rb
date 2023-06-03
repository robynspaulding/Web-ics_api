class ComicsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
  
  def index
    comics = Comic.all
    render json: comics.as_json
  end

  def create
    comic = Comic.create(
      title: params[:title],
      image: params[:image],
    )
    render json: comic.as_json
  end

  def show
    comic = Comic.find_by(id: params[:id])
    render json: comic.as_json
  end

  def update
    comic = Comic.find_by(id: params[:id])
    comic.title = params[:title] || comic.title
    comic.image = params[:image] || comic.image
    comic.save
    render json: comic.as_json
  end

  def destroy
    comic = Comic.find_by(id: params[:id])
    comic.delete
    render json: { message: "Comic successfullt deleted" }
  end
end
