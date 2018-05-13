class CreateMeatCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :meat_categories do |t|
      t.belongs_to :meat_type
      t.belongs_to :meat

      t.timestamps
    end
  end
end
