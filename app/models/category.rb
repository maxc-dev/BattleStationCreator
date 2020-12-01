class Category < ApplicationRecord
  # the category name must be unique, for example CPU cannot appear twice
  validates :name, uniqueness: true, presence: true

  # every category has many parts associated to it
  has_many :parts, dependent: :destroy
end
