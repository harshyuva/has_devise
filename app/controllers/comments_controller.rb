class CommentsController < ApplicationController



 def new
    @comment = Comment.new

  end

  def create
    debugger
    @user = User.find(params[:user_id])
    @comment = @user.comments.create(comment_params)
    redirect_to user_path(@user)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :text)
    end
end



