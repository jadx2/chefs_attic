class Category < ApplicationRecord
  has_many :article_categories
  has_many :articles, through: :article_categories

  after_initialize :init

  def init
    self.priority ||= Category.maximum('priority').nil? ? 1 : Category.maximum('priority') + 1
  end

  def self.set_priority(votes)
    categories = votes.keys
    categories.each_with_index do |category, i|
      find(category).update(priority: i + 1)
    end
    all
  end
end
