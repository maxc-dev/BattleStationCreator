class Contact < ApplicationRecord
  # validates that the user is set and is valid
  validates :user_id, presence: true
  validates :title, presence: true
  validates :body, presence: true

  # associations
  belongs_to :user

  # scope for only showing contacts for a given user
  scope :user_contacts, ->(user_id) { where(['user_id = ?', user_id]) }
end
