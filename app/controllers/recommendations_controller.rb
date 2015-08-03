class RecommendationsController < ApplicationController

#index
def index
  @recommendation = Recommendation.all.order(:id).reverse
end


end #of class
