class AddOrderNumberToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :order_number, :integer
  end
end
