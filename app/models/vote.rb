class Vote < ApplicationRecord
  validates :user_id, uniqueness: { scope: :article_id }
  belongs_to :user
  belongs_to :article

  def self.vote_count_by_article
    group(:article_id).order('count_all desc').count
  end

  def self.vote_count_by_category
    joins(article: :categories).group(:category_id).order('count_all desc').count
  end
end
