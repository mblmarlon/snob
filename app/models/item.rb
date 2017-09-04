class Item < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true
  belongs_to :user
  has_attachments :photos, maximum: 5
end
