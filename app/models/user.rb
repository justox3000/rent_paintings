class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings_as_renter, class_name: "Booking", foreign_key: "user_id"
  has_many :paintings
  has_many :bookings_as_owner, through: :paintings, class_name: "Booking", source: :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
