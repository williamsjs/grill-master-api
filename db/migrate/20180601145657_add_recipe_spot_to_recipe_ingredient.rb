class AddRecipeSpotToRecipeIngredient < ActiveRecord::Migration[5.2]
  def change
    add_column :recipe_ingredients, :spot, :integer
  end
end
