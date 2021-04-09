class Article < ApplicationRecord
  validates_presence_of :title, :text, :image, :author_id
  validates :image, format: { with: /\.(png|jpg|jpeg)/, message: 'must be a URL for GIF, JPG or PNG image.' }

  belongs_to :author, class_name: 'User'
  has_many :article_categories
  has_many :categories, through: :article_categories

  def all_categories
    self.categories.map(:name).join(',')
  end
end
