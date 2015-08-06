class UsersController < ApplicationController

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

  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to Triply!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def update

  end

  def destroy

  end

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end

end
