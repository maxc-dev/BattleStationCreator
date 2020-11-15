class Part < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { greater_than: 0 }

  belongs_to :category
  belongs_to :manufacturer
end
