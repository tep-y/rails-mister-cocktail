class AddRatingToCoktails < ActiveRecord::Migration[6.0]
  def change
    add_column :coktails, :rating, :integer
  end
end
