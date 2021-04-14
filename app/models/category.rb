class Category < ApplicationRecord
  has_many :article_categories
  has_many :articles, through: :article_categories

  before_create { |category| category.name = category.name.titleize }

  scope :highest_priority, -> { order(priority: :asc).limit(4) }
end
