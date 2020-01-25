class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :uid
      t.string :provider
      t.string :email
      t.references :user, index: true
      
      t.timestamps
    end
  end
end
