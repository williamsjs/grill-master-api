class DropRecipeInstructions < ActiveRecord::Migration[5.2]
  def change
    drop_table :recipe_instructions
  end
end
