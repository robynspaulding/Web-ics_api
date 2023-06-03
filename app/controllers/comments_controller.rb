class CommentsController < ApplicationController

  before_action :authenticate_user, except: [:index, :show]
  
  def index
    comments = Comment.all
    render json: comments.as_json
  end

  def create
    comment = Comment.create(
      user_id: params[:user_id],
      comic_id: params[:comic_id],
      comment: params[:comment],
    )
    render json: comment.as_json
  end

  def show
    comment = Comment.find_by(id: params[:id])
    render json: comment.as_json
  end

  def update
    comment = Comment.find_by(id: params[:id])
    comment.user_id = params[:user_id] || comment.user_id
    comment.comic_id = params[:comic_id] || comment.comic_id
    comment.comment = params[:comment] || comment.comment
    comment.save
    render json: comment.as_json
  end

  def destroy
    comment = Comment.find_by(id: params[:id])
    comment.delete
    render json: { message: "Comment successfullt deleted" }
  end

end
