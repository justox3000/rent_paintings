class Booking < ApplicationRecord
  belongs_to :user_id
  belongs_to :painting_id
  belongs_to :review_id
end
