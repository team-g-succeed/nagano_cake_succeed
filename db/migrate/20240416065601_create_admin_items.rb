class CreateAdminItems < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_items do |t|
      t.integer :genre_id
      t.string :item_name
      t.integer :price
      t.text :introduction
      t.boolean :is_active

      t.timestamps
      drop_table :AdminItems
    end
  end
end
