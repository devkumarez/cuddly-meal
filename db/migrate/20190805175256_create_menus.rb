class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :category
      t.integer :food_type
      t.integer :available
      t.text :items
      t.text :description
      t.decimal :price
      t.boolean :status

      t.timestamps
    end
  end
end
