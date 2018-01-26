class Item < ApplicationRecord
  self.primary_key = :item_id

  validates :item_id, presence: true, uniqueness: true
  validates :chat_link, presence: true
  validates :name, presence: true, uniqueness: true
  validates :icon, presence: true
  validates :item_type, presence: true
  validates :rarity, presence: true
  validates :level, presence: true
  validates :vendor_value, presence: true

  has_one :listing, primary_key: :item_id, dependent: :destroy
end
