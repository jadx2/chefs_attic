class LoadCategories < ActiveRecord::Migration[6.1]
  def up
    categories = { 'main dish' => 1, 'entree' => 2, 'dessert' => 3, 'drinks' => 4, 'soups' => 5, 'side dish' => 6, 'vegan' => 7, 'italian' => 8, 'chinese' => 9, 'mexican' => 10, 'japanese' => 11, 'meat' => 12, 'poultry' => 13, 'fish' => 14, 'other' => 15 }

    categories.each { |category| Category.create(name: category[0].capitalize, priority: category[1]) }
  end

  def down
    Category.delete_all
  end
end
