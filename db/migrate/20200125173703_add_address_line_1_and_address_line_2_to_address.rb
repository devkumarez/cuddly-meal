class AddAddressLine1AndAddressLine2ToAddress < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :line_1, :string
    add_column :addresses, :line_2, :string
  end
end
