class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :article

  def self.count_by_article
    group(:article_id).order('count_all desc').count
  end
end
