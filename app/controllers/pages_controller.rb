class PagesController < ApplicationController
  def home
  end

  def new
    @user = User.find_by :urlname => params[:urlname]
    redirect_to profile_path(params[:urlname]) unless session[:user_id] == @user.id
    @glossary = Glossary.new
  end

  def create
  end

  def view
    @glossary = Glossary.find_by :urlname => params[:pagename]
  end

  def edit
    @glossary = Glossary.find_by :urlname => params[:pagename]
    redirect_to profile_path(params[:urlname]) unless session[:user_id] == @user.id
  end

  def update

  end
end
