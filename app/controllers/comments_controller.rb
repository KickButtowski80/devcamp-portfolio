class CommentsController < ApplicationController
  def create
    @comment = Current_user.comments.build(comment_params)
  end
  
  private 
  
  def comment_params
    params.require(:comment).permit(:cotent)
  end
end
