class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.painting = Painting.find(params[:painting_id])
    @booking.renter = current_user
    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:startdate, :enddate)
  end
end
