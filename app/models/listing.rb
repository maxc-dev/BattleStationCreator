class Listing < ApplicationRecord
  # validates that the user is set and is valid
  validates :user_id, presence: true, null: false

  # associations
  belongs_to :user
  has_many :list_items, dependent: :destroy

  # scope for only showing listings for as given user
  scope :user_listings, ->(user_id) { where(['user_id = ?', user_id]) }
end
