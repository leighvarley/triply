class LocationsController < ApplicationController

#index, and show b/c users can only see locations, can't create, edit or delete them

  #index
  def index
    @locations = Location.all
  end

  #show
  def show
    #@location = Location.find(params[:id])
    @location = Location.find_by(id: params[:id])
  end





end
