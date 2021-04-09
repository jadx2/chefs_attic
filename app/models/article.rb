class Article < ApplicationRecord
  validates_presence_of :title, :text, :image, :author_id
  validates :image, format: { with: /\.(png|jpg|jpeg)/, message: 'must be a URL for GIF, JPG or PNG image.' }

  belongs_to :author, class_name: 'User'
end
