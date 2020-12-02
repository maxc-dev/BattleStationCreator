class Part < ApplicationRecord
  # validates that the name, category_id and manufacturer_id all exist and are valid
  # also ensures that numeric values like price are appropriate
  validates :name, presence: true
  validates :category_id, presence: true
  validates :price, numericality: { greater_than: 0 }

  belongs_to :manufacturer
  belongs_to :category
end
