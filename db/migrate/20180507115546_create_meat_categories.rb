class CreateMeatCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :meat_categories do |t|
      t.MeatType :belongs_to
      t.Meat :belongs_to

      t.timestamps
    end
  end
end
