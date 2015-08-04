class RecommendationsController < ApplicationController

#index
def index
  @recommendations = Recommendation.all.order(:id).reverse
  #@recommendations = @location.Recommendation.all.order(:id).reverse
end

#new
def new
  @recommendation = Recommendation.new
end







end
