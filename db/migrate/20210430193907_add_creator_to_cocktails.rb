class AddCreatorToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :creator, :string
  end
end
