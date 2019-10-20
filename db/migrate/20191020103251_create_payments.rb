class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.jsonb :payment_json, default: {}
      t.references :payable, polymorphic: true
      t.references :user
      t.timestamps
    end
  end
end
