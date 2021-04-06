class Article < ApplicationRecord
  validates_presence_of :title, :text, :image

  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :categories
end
