class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :articles, dependent: :destroy, foreign_key: 'author_id'
end
