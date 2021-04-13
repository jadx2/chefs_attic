class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @article_votes = Vote.vote_count
    @featured = Article.most_popular(@article_votes)
    @categories = Category.all.highest_priority
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
      redirect_to @article, notice: 'Recipe saved!'
    else
      render :new, alert: 'Recipe was not saved!'
    end
  end

  def article_params
    params.require(:article).permit(:title, :text, :image, category_ids: [])
  end
end
