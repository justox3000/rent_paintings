class Review < ApplicationRecord
  belongs_to :painting
  validates :content, :rating, presence: true
  validates :content, length: { minimum: 20 }
  validates :rating, numericality: { in: 0..5 }
end
