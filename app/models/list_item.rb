class ListItem < ApplicationRecord
  belongs_to :list
  belongs_to :part

  scope :list_parts, ->(list) { where(['list_id = ?', list.id]) }
end
