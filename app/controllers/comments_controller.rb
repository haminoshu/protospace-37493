class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to avatar_path(@comment.avatar)
    else
      @avatar = @comment.avatar
      @comments = @avatar.comments
      render 'avatars/show'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, avatar_id: params[:avatar_id])
  end
end
