class LocationsController < ApplicationController

#index, and show b/c users can only see locations, can't create, edit or delete them

  #index
  def index
    @locations = Locations.all
  end

  #new
  def new
    @location = Location.new
  end





end
