class LocationsController < ApplicationController
  def index
    @locations = current_user.try(:locations)
  end
  def new
    @location = Location.new
  end
  def show
    @location = Location.find(params[:id])
  end
  def create
    @location = Location.new(location_params)
    @location.user_id = current_user.id
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
