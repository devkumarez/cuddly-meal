class RenameColumnLameNameToLastNameOnUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :lame_name, :last_name
    rename_column :users, :moblie_number, :mobile_number
    change_column :users, :mobile_number, :integer, limit: 8
  end
end
