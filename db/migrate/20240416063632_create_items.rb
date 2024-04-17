class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :genre_id
      t.string :item_name, null: false
      t.integer :price, null: false
      t.text :introduction, null: false
      t.boolean :is_active, null: false, default: 0

      t.timestamps
    end
  end
end
