class CommentsController < ApplicationController
  
  def create 
    @comment = Comment.new comment_params
    @comment.account_id = current_account.id

        if @comment.save
          @comments = Comment.where(post_id: @comment.post_id)
        else
          # unable to save
        end  
  end

  def comment_params 
    params.require(:comment).permit(:message, :post_id)
  end
end