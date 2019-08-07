class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.string :landmark
      t.integer :zip
      t.references :user, index: true

      t.timestamps
    end
  end
end
