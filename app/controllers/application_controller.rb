class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  #Moved from recommendation controller to app controller so that logged_in_user and correct_user can be reused in comments, etc.

  private
  #confirm user is logged in
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  #confirm correct user
  def correct_user
    return unless session[:email]
    @current_user ||= User.find(session[:email])
  end

end
