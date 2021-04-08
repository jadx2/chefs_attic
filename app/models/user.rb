class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  before_create { |user| user.name = user.name.capitalize }

  has_many :articles, dependent: :destroy, foreign_key: 'author_id'
end
