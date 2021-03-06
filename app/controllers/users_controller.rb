class UsersController < ApplicationController

 # before_action :logged_in_user, only: [:edit, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #log the user in as part of the sign up process
      log_in @user
      flash[:success] = "Welcome to Triply!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy

  end

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end

  # Confirms a logged-in user.
  # def logged_in_user
  #   unless logged_in?
  #     flash[:danger] = "Please log in."
  #     redirect_to login_url
  #   end
  # end

end
