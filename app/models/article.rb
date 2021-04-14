class Article < ApplicationRecord
  validates_presence_of :title, :text, :image, :author_id, :all_categories
  validates :image, format: { with: /\.(png|jpg|jpeg)/, message: 'must be a URL for GIF, JPG or PNG image.' }

  belongs_to :author, class_name: 'User'
  has_many :article_categories, dependent: :destroy
  has_many :categories, through: :article_categories
  has_many :votes, dependent: :destroy

  before_create { |article| article.title = article.title.titleize }

  scope :most_recent, -> { order(created_at: :desc).limit(4) }

  def all_categories=(name)
    self.categories = name.split(',').map do |name|
      Category.where(name: name.strip).first_or_create!
    end
  end

  def all_categories
    self.categories.map(&:name).join(',')
  end

  def self.most_popular(article_votes)
    find(article_votes.keys[0])
  end
end
