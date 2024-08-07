class Post < ApplicationRecord
  has_many :images, dependent: :destroy
  validates :title, presence: true
  validates :category, presence: true
  validates :body, presence: true
end
