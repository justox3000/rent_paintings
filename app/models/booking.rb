class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :painting
  belongs_to :review
  belongs_to :user, through: :painting
end
