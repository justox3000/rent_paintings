class Painting < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :customers, through: :bookings
end
