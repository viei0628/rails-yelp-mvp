class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant, :content, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: (0..5) }
end
