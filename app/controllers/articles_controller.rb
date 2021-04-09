class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @featured = Article.last
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)

    if @article.save
      redirect_to @article, notice: 'Article saved!'
    else
      render :new, alert: 'Article was not saved!'
    end
  end

  def article_params
    params.require(:article).permit(:title, :text, :image, category_ids: [])
  end
end
