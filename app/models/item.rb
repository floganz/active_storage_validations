class Item < ApplicationRecord
  has_one_attached :picture

  validates :picture, processable_image: true
end
