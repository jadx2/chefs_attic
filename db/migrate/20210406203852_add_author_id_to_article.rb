class AddAuthorIdToArticle < ActiveRecord::Migration[6.1]
  def change
  end

  add_foreign_key :articles, :users, column: :author_id
end
