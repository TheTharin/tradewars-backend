class AddIndexToItems < ActiveRecord::Migration[5.1]
  def change
    add_index :items, :item_id
    add_index :items, :name
  end
end
