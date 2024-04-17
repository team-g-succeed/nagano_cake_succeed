class RenameAdminItemName < ActiveRecord::Migration[6.1]
  def change
    rename_column :admin_items, :item_name, :name
    change_column :admin_items, :name, :string, null: false
    change_column :admin_items, :price, :integer, null: false
    change_column :admin_items, :introduction, :text, null: false
    change_column :admin_items, :is_active, :boolean, null: false, default: 0
    rename_table :admin_items, :items
  end
end
