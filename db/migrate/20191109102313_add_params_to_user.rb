class AddParamsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :lame_name, :string
    add_column :users, :moblie_number, :integer
  end
end
