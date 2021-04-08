class ArticlesController < ApplicationController
  before_action :require_login, only: [:create]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article, notice: 'Article saved!'
    else
      render :new, alert: 'Article was not saved!'
    end
  end

  def article_params
    params.require(:article).permit(:title, :text, :image, :author_id, :category_id)
  end

  def require_login
    return unless current_user.nil?

    redirect_to login_path, alert: 'You must be logged in!'
  end
end
