class Article < ApplicationRecord
  validates_presence_of :title, :text, :image, :author_id

  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :categories
end
