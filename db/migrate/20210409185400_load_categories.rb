class LoadCategories < ActiveRecord::Migration[6.1]
  def up
    categories = ['main', 'entree', 'dessert', 'drinks', 'soups', 'side', 'vegan', 'italian', 'chinese', 'mexican', 'japanese', 'meat', 'poultry', 'fish', 'other']

    categories.each { |category| Category.create(name: category.capitalize) }
  end

  def down
    Category.delete_all
  end
end
