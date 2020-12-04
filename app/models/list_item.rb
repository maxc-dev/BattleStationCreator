class ListItem < ApplicationRecord
  belongs_to :listing
  belongs_to :part

  scope :list_parts, ->(list_id) { where(['list_id = ?', list_id]) }
end
