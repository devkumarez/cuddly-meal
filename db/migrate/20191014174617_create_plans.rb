class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :name
      t.decimal :total_credit
      t.decimal :total_price
      t.boolean :status

      t.timestamps
    end
  end
end
