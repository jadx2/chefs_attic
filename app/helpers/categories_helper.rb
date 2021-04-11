module CategoriesHelper
  def article_display(article, index)
    if index.odd?
      render partial: 'categories/article_up', locals: { article: article }
    else
      render partial: 'categories/article_down', locals: { article: article }
    end
  end
end
