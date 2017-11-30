class BookingsController < ApplicationController

  def create
    @prestation = Prestation.find(params[:prestation_id])
    @booking = Booking.new(booking_params)
    @booking.prestation = @prestation
    @booking.user = current_user
    authorize @booking
    @booking.save
    redirect_to booking_path(@booking)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy

    redirect_to prestations_path
  end

  private
  def booking_params
    params.require(:booking).permit(:description, :date, :end_date, :location)
  end
end
