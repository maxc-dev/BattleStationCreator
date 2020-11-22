class Part < ApplicationRecord
  validates :name, presence: true
  validates :category_id, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :power, numericality: { greater_than: 0 }
  validates :category_id, numericality: { greater_than_or_equal_to: 0 }
  validates :manufacturer_id, numericality: { greater_than_or_equal_to: 0 }
end
