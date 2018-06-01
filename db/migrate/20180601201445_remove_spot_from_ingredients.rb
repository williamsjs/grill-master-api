class RemoveSpotFromIngredients < ActiveRecord::Migration[5.2]
  def change
    remove_column :ingredients, :spot
  end
end
