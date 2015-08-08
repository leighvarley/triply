class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


private
  def authenticate
    if !session[:is_logged_in]
      redirect_to "/login"
    end
  end
end
