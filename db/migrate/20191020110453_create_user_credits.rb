class CreateUserCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :user_credits do |t|
      t.references :user, index: true
      t.decimal :credit
      t.references :created_by, polymorphic: true, index: true
      t.integer :transaction_type

      t.timestamps
    end
  end
end
