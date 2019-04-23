class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path #TODO send them to created user page
    else
      render :new
    end
  end

  def folders
    @user = User.find_by :username => params[:username]
    render :unknown unless @user.present?
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
