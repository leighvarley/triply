class LocationsController < ApplicationController

  #index
  def index
    @locations = Location.all
  end

  #show
  def show
    @location = Location.find(params[:id])
    # @recommendation = @location.recommendations.new
    #@location = Location.find_by(id: params[:id]) - this does the same thing as line above (line above is a shortcut)
  end

  private
  def location_params
    params.require(:location).permit(:city_name, :state_name, :photo_url)
  end

end
