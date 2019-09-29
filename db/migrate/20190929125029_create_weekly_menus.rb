class CreateWeeklyMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :weekly_menus do |t|
      t.references :week, index: true
      t.references :menu, index: true

      t.timestamps
    end
  end
end
