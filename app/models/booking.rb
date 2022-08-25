class Booking < ApplicationRecord
  has_one :owner, through: :painting, class_name: "User"
  belongs_to :renter, class_name: "User"
  belongs_to :painting
  belongs_to :review
end
