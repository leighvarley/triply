class RecommendationsController < ApplicationController

#index
def index
  #@locations = Location.find(params[:location.id])
  #@locations = Location.find(params[:id])
  #@locations = Location.find_by(name: params[:location_id])
  @recommendations = Recommendation.all.order(:id).reverse
  #@recommendations = @location.Recommendation.all.order(:id).reverse
end

#new
def new
  @recommendation = Recommendation.new
end

def create
  #save username when recommendation is added
  @recommendation = Recommendation.create!(recommendation_params.merge({user_id: session[:user]["id"]}))
  redirect_to recommendation_path(@recommendation)
end





end
