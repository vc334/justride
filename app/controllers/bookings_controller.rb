class BookingsController < ApplicationController
  def index
  end

  def my_bookings
    @bookings = Booking.where(user: current_user)

  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.motorcycle = Motorcycle.find(params[:motorcycle_id])
    @booking.save
    redirect_to my_bookings_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :motorcycle_id)
  end

end
