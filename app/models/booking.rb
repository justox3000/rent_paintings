class Booking < ApplicationRecord
  belongs_to :renter, class_name: "User", foreign_key: "user_id"
  belongs_to :painting
  belongs_to :review
  delegate :owner, to: :painting
end
