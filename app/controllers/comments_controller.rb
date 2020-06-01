class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = @current_user.id
    if @comment.save
      redirect_to("/posts/index")
    else
      redirect_to("/posts/index")
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
