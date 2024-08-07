class Image < ApplicationRecord
  belongs_to :post
  validates :image_data, presence: true
  validates :image_name, presence: true
end
