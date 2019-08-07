class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :address, foreign_key: true
      t.references :menu, foreign_key: true
      t.integer :delivery_status
      t.decimal :total_credit

      t.timestamps
    end
  end
end
