class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.product_id = params[:product_id]

    @comment.save

    redirect_to product_path(@comment.product)
  end
end


def comment_params
  params.require(:comment).permit(:author_name, :body)
end
