class ArticlesController < ApplicationController
  def index
    @article_votes = Vote.vote_count_by_article
    @category_votes = Vote.vote_count_by_category
    @featured = Article.most_popular(@article_votes)
    @top_categories = Category.update_priority(@category_votes)
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
    params.require(:article).permit(:title, :text, :image, :all_categories)
  end
end
