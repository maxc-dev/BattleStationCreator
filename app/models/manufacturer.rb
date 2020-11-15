class Manufacturer < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :parts, dependent: :destroy
end
