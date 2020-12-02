class Listing < ApplicationRecord
  # validates that the user is set and is valid
  validates :user_id, presence: true

  # associations
  belongs_to :user
  has_many :list_items

  # scope for only showing listings for as given user
  scope :user_listings, ->(user) { where(['user_id = ?', user.id]) }
end
