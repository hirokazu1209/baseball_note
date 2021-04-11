class ArticlesController < ApplicationController

  def index
    @article = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
  end

  private
  def article_params
    params.require(:article).permit(:post, :image).merge(user_id: current_user.id)
  end

end
