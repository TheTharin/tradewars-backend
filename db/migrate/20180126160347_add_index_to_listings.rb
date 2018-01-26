class AddIndexToListings < ActiveRecord::Migration[5.1]
  def change
    add_index :listings, :item_id
  end
end
