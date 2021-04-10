class Category < ApplicationRecord
  has_many :article_categories
  has_many :articles, through: :article_categories

  def prioritize
    Category.all.each do |category|
      category.articles.count
    end
  end
end
