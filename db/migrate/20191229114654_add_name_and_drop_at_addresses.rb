class AddNameAndDropAtAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :drop_at, :string
    add_column :addresses, :name, :string
    add_column :addresses, :building, :string
    add_column :addresses, :locality, :string
  end
end
