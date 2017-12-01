class PrestationsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR syllabus ILIKE :query"
       @prestations = Prestation.where(sql_query, query: "%#{params[:query]}%")
    else
      @prestations = Prestation.all
    end
    @prest = policy_scope(Prestation)
    @prestations = Prestation.where.not(latitude: nil, longitude: nil)

    @markers = @prestations.map do |prestation|
      {
        lat: prestation.latitude,
        lng: prestation.longitude,
        infoWindow: { content: render_to_string(partial: "/prestations/map_box", locals: { prestation: prestation }) }

      }
    end

  end

  def show
    @prestation = Prestation.find(params[:id])
    authorize @prestation
    @booking = Booking.new
  end

  def new
    @prestation = Prestation.new
    authorize @prestation
  end

  def create
    @prestation = Prestation.new(prestation_params)
    @prestation.user = current_user
    authorize @prestation
    if @prestation.save
      redirect_to prestation_path(@prestation)
    else
      render :new
    end
  end

  def destroy
    @prestation = Prestation.find(params[:id])
    authorize @prestation
    @bookings = @prestation.bookings
    @bookings.each do |booking|
      booking.destroy
    end
    @prestation.destroy

    redirect_to prestations_path
  end

  private

  def prestation_params
    params.require(:prestation).permit(:price, :description, :job, :location)
  end
end
