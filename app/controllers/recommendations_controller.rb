class RecommendationsController < ApplicationController
  before_action :logged_in_user, only: [:new, :edit, :update]
  before_action :correct_user, only: [:edit, :update]

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
    # @user = correct_user
    @location = Location.find(params[:location_id])
    @recommendation = @location.recommendations.create!(recommendation_params)
    @recommendation.update
    # @recommendation.update(user: correct_user)
    redirect_to location_path(@location)
  end

  #show
  def show
    @recommendation = Recommendation.find(params[:id])
    @location = @recommendation.location
    @user = @recommendation.user
  end

  #edit
  def edit
    @recommendation = Recommendation.find(params[:id])
    @location = @recommendation.location
    @user = correct_user
     if @user != @recommendation.user
      redirect_to :back
      flash[:danger] = "You are not authorized to edit this recommendation"
   end
  end

  #update
  def update
    @recommendation = Recommendation.find(params[:id])
    @location = Location.find(params[:location_id])
    @recommendation.update(recommendation_params.merge(location: @location))
    redirect_to location_path(@location)
    @user = correct_user
      if @user != @recommendation.user
      redirect_to :back
      flash[:danger] = "You are not authorized to edit this recommendation"
    end
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

  private
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  def correct_user
    return unless session[:email]
    @current_user ||= User.find(session[:email])
  end

end
