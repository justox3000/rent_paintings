class Painting < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, :artist_name, :year, :price, presence: true
  validates :year, numericality: { greater_than_or_equal_to: 0 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
