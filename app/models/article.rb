class Article < ApplicationRecord
  validates_presence_of :title, :text, :image, :author_id, :category_ids
  validates :image, format: { with: /\.(png|jpg|jpeg)/, message: 'must be a URL for GIF, JPG or PNG image.' }

  belongs_to :author, class_name: 'User'
  has_many :article_categories, dependent: :destroy
  has_many :categories, through: :article_categories
  has_many :votes, dependent: :destroy

  scope :most_recent, -> { order(created_at: :desc).limit(4) }

  def self.most_popular(article_votes)
    find(article_votes.keys[0])
  end
end
