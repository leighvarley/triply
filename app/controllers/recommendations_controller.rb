class RecommendationsController < ApplicationController

  #index
  def index
    @location = Location.find(params[:location_id])
    #@locations = Location.find(params[:id])
    #@locations = Location.find_by(name: params[:location_id])
    #@recommendations = Recommendation.all.order(:id).reverse
    @recommendations = @location.recommendations.order(:id).reverse
  end

  #new
  def new
    @location = Location.find(params[:location_id])
    @recommendation = Recommendation.new
  end

  #create
  def create
    #save username when recommendation is added
    #@recommendation = Recommendation.create!(recommendation_params.merge({user_id: session[:user]["id"]}))
    #@recommendation = Location.recommendation.create!(recommendation_params)
    #@recommendation = Recommendation.find(params[:id])
    #@location = @recommendation.location
    @location = Location.find(params[:location_id])
    @recommendation = @location.recommendations.create!(recommendation_params.merge({
      user_id: session[:user]["id"]
      }))
    #@recommendation = @location.recommendations.create!(location_recommendation_params)
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
end

  private
    def recommendation_params
      params.require(:recommendation).permit(:recommended_place, :body)
    end





end
