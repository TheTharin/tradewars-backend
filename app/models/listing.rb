class Listing < ApplicationRecord
  validates :item_id, presence: true

  belongs_to :item, primary_key: :item_id
end
