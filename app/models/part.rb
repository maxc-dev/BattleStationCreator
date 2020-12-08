class Part < ApplicationRecord
  # validates that the name, category_id and manufacturer_id all exist and are valid
  # also ensures that numeric values like price are appropriate
  validates :name, presence: true, null: false
  validates :category_id, presence: true, null: false
  validates :price, null: false, numericality: { greater_than: 0 }

  belongs_to :manufacturer
  belongs_to :category

  # scope for only showing listings for as given user
  scope :category_filter, ->(category_id) { where(['category_id = ?', category_id]) }
  scope :manufacturer_filter, ->(manufacturer_id) { where(['manufacturer_id = ?', manufacturer_id]) }
  scope :category_manufacturer_filter,
        ->(category_id, manufacturer_id){ where(['category_id = ? and manufacturer_id = ?', category_id, manufacturer_id]) }
end
