class Manufacturer < ApplicationRecord
  # every manufacturer name must be unique
  # it is incredibly unlikely that another manufacturer will have the same name in this industry
  validates :name, presence: true, uniqueness: true

  # each manufacturer creates a part, so there will be an association
  has_many :parts, dependent: :destroy
end
