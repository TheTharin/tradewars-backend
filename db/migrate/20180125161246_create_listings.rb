class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.integer :item_id, unique: true, null: false
      t.jsonb :buys, array: true, default: []
      t.jsonb :sells, array: true, default: []

      t.timestamps
    end
  end
end
