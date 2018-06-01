class RemoveSpotFromInstructions < ActiveRecord::Migration[5.2]
  def change
    remove_column :instructions, :spot
  end
end
