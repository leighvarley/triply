class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  private
    def authenticate
      if !session[:is_logged_in]
        redirect_to "/login"
      end
  end

  def current_user
    return unless session[:email]
    @current_user ||= User.find(session[:email])
  end

end
