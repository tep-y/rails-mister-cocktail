class AddTypeToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :type, :string
  end
end
