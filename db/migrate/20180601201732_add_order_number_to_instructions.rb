class AddOrderNumberToInstructions < ActiveRecord::Migration[5.2]
  def change
    add_column :instructions, :order_number, :integer
  end
end
