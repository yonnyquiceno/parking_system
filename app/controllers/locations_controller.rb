class LocationsController < ApplicationController
  def index
    @locations = Location.all
    flash[:error] = 'No locations registered' if @locations.empty?
end
