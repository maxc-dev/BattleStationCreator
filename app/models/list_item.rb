class ListItem < ApplicationRecord
  validates :listing_id, presence: true, null: false
  validates :part_id, presence: true, null: false

  belongs_to :listing
  belongs_to :part

  scope :list_parts, ->(list_id) { where(['list_id = ?', list_id]) }
end
