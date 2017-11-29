class BookingsController < ApplicationController

  def create
    @prestation = Prestation.find(params[:prestation_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.prestation = @prestation
    @booking.user = current_user
    @booking.save
    redirect_to booking_path(@prestation)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  private
  def booking_params
    params.require(:booking).permit(:description, :date, :location, :duration)
  end
end
