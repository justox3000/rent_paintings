class PagesController < ApplicationController
  def dashboard
    @bookings_owner = current_user.bookings_as_owner
    @bookings_renter = current_user.bookings_as_renter
    @paintings = current_user.paintings
  end
end
