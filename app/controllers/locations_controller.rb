class LocationsController < ApplicationController
  def index
    @locations = Location.order(created_at: :desc)
  end
  def new
    @location = Location.new
  end
  def show
    @location = Location.find(params[:id])
  end
  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to @location
    else
      render 'new'
    end
  end
  def destroy
    Location.find(params[:id]).destroy
    redirect_to locations_path
  end
  def location_params
    params.require(:location).permit(:cords,:name,:description)
  end
end
