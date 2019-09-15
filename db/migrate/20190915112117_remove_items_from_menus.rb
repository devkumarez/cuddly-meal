class RemoveItemsFromMenus < ActiveRecord::Migration[5.2]
  def change
    remove_column :menus, :items, :text
  end
end
