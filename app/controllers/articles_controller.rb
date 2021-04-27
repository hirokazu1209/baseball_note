class ArticlesController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.order("created_at DESC")
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
    @comments = @article.comments.includes(:user) 
  end

  def edit
    @article = Article.find(params[:id])
    unless user_signed_in? && current_user.id == @article.user_id
      redirect_to action: :index
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to article_path
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to article_path
  end

  private
  def set_item
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:post, :image).merge(user_id: current_user.id)
  end

end
