class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
  end

  def folders
    @user = User.find_by :username => params[:username]
  end

  def search
    @user = User.find_by :username => params[:username]
  end

  def profile
    @user = User.find_by :username => params[:username]
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
