class RemoveIngredientsFromCocktails < ActiveRecord::Migration[6.0]
  def change
    remove_column :cocktails, :ingredients, :string
  end
end
