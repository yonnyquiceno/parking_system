class LocationsController < ApplicationController
  def index
    @locations = Location.all
    flash[:error] = 'No locations registered' if @locations.empty?
  end
  def new
    if current_user.is_admin
    @location = Location.new
  else
    flash[:error] = 'You must log in as administrator.'
    redirect_to root_path    
  end
  end
  def create
    @location = Location.new(location_params)
    if @location.save
      flash[:success] = 'Location registered succssfully.'
      redirect_to locations_path
    else
      flash[:error] = @location.errors.full_messages.join(',')
      render 'new'
    end
  end

  def location_params #todo controlador debe tener este metodo
    params.require(:location).permit(:description, :address)
  end
  private :location_params
end
