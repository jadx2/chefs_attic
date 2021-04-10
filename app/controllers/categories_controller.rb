class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @articles = @category.articles.most_recent
  end
end
