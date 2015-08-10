class RecommendationsController < ApplicationController

#before_action :logged_in_user, only: [:new, :create, :edit, :update, :destroy]
#before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]

  #index
  def index
    @location = Location.find(params[:location_id])
    @recommendations = @location.recommendations.order(:id).reverse
  end

  #new
  def new
    @location = Location.find(params[:location_id])
    @recommendation = Recommendation.new
  end

  #create
  def create
    @location = Location.find(params[:location_id])
    #save username when recommendation is added
    @recommendation = @location.recommendations.create!(recommendation_params.merge({
      user_id: session[:user]["id"]
      }))
    redirect_to location_path(@location)
  end

  #show
  def show
    @recommendation = Recommendation.find(params[:id])
    @location = @recommendation.location
  end

  #edit
  def edit
    @recommendation = Recommendation.find(params[:id])
    @location = @recommendation.location
  end

  #update
  def update
    @recommendation = Recommendation.find(params[:id])
    @location = Location.find(params[:location_id])
    @recommendation.update(recommendation_params.merge(location: @location))
    redirect_to location_path(@location)
  end

  #destroy
  def destroy
    @location = params[:location_id]
    @recommendation = Recommendation.find(params[:id])
    @recommendation.destroy
    redirect_to location_path(@location)
  end

  private
    def recommendation_params
      params.require(:recommendation).permit(:recommended_place, :body)
    end

end
