class Painting < ApplicationRecord
  belongs_to :user_id
  validates :name, :artist_name, :year, :price, presence: true
  validates :year, numericality: { greater_than_or_equal_to: 0 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
