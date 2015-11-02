class SessionsController < ApplicationController
#Rather than using a model to persist data, session uses cookies to authenticate

  #visiting the login page renders a form for a new session
  def new
  end

  #logging in creates a session (post request to create action)
  def create
    #pull user out of db using the submitted email addess.
    #params[:session][:email] is the submitted email
    user = User.find_by(email: params[:session][:email].downcase)
    #&& statement determines whether or not user is valid by comparing what is entered in the form with the database to see if there is a match
    #params[:session][:password] is the submitted password
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to user
    else
      # Create an error message.
      #Flash persists for one request, but re-rendering a template (instead of redirecting) doesn't count as a request, so the msg will show up on the next page visited - correct this with .now
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  #logging out destroys the session (delete request to destroy action)
  def destroy
    log_out
    redirect_to root_url
  end

end
