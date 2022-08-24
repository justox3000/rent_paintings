class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :painting
  belongs_to :review
end
