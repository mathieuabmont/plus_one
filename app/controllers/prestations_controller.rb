class PrestationsController < ApplicationController
  def index
    @prestations = Prestation.all
  end

  def show
    @prestation = Prestation.find(params[:id])
  end

  def new
    @prestation = Prestation.new
  end

  def create
    @prestation = Prestation.new(prestation_params)
    @prestation.user = current_user
    if @prestation.save
      redirect_to prestation_path(@prestation)
    else
      render :new
    end
  end

  private

  def prestation_params
    params.require(:prestation).permit(:price, :description)
  end
end
