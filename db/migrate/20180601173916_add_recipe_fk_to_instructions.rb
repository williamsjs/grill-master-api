class AddRecipeFkToInstructions < ActiveRecord::Migration[5.2]
  def change
    add_reference :instructions, :recipe, foreign_key: true
    add_column :instructions, :spot, :integer
  end
end
