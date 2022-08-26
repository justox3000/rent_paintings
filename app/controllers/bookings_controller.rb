class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.painting = Painting.find(params[:painting_id])
    @booking.renter = current_user
    if @booking.save!
      redirect_to dashboard_path
    else
      render "paintings/show", painting: @booking.painting, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:startdate, :enddate)
  end
end
