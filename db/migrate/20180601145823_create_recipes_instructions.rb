class CreateRecipesInstructions < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_instructions do |t|
      t.belongs_to :ingredient
      t.belongs_to :recipe
      t.integer :spot
      t.timestamps
    end
  end
end
