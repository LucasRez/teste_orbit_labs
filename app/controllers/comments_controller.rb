class CommentsController < ApplicationController
  def index
    comments = Comment.filter_by_params(params).all
    render json: comments
  end

  def create
    comment = Comment.new(comment_params)
    if comment.save
      render json: comment
    else
      render json: { message: 'validation failed', errors: comment.errors },
             status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.permit(:text,
                  :user_id,
                  :event_id)
  end
end
