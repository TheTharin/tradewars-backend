class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :item_id, unique: true, null: false
      t.string :chat_link, null: false
      t.string :name, unique: true, null: false
      t.string :icon, null: false
      t.string :description
      t.string :item_type, null: false
      t.string :rarity, null: false
      t.integer :level, null: false
      t.integer :vendor_value, null: false
      t.integer :default_skin
      t.text :flags, array: true, default: []
      t.text :game_types, array: true, default: []
      t.text :restrictions, array: true, default: []
      t.jsonb :details

      t.timestamps
    end
  end
end
