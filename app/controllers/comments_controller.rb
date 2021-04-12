class CommentsController < ApplicationController
  def create 
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to articles_path(@comment.article)
    else
      @article = @comment.prototype
      @comments = @article.comments
      render "prototypes/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, article_id: params[:article_id])
  end
end
