class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    @user.urlname = @user.username.gsub(" ","-").downcase
    root = Node.new :name => 'root'
    @user.nodes.push(root)

    if @user.save
      session[:user_id] = @user.id
      redirect_to folder_path(@user.urlname)
    else
      render :new
    end
  end

  def folders
    @user = User.find_by :urlname => params[:urlname]
    render :unknown unless @user.present?
  end

  def foldedit
    @user = User.find_by :urlname => params[:urlname]
  end

  def search
    @user = User.find_by :urlname => params[:urlname]
  end

  def profile
    @user = User.find_by :urlname => params[:urlname]
  end

  def edit
    @user = User.find_by :urlname => params[:urlname]
    redirect_to profile_path(params[:urlname]) unless session[:user_id] == @user.id
  end

  def update
    puts '-=' * 40
    user = User.find_by :id => params[:id]
    user.update user_params
    user.urlname = user.username.gsub(" ","-").downcase
    if user.save
      redirect_to profile_path(user.urlname)
    else
      flash[:invaliderror] = "Username or email is already in use"
      redirect_to profile_edit_path(user.urlname)
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
