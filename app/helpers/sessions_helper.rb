module SessionsHelper

  # Logs in the given user
  def log_in(user)
    #puts temporary cookie on user's browser w/encrypted version of user's id so that the id can be retrieved on other pages - expires when browser is closed
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # A user is logged in if there's a current user in the session (if current_user is not nil)
  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  # Logs out the current user.
  # To log out, delete the user id from the session & set current user to nil
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

end
