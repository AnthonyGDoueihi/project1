class PagesController < ApplicationController
  def home
  end

  def new
    @user = User.find_by :username => params[:username]
    @glossary = Glossary.new
  end

  def create
  end

  def view
    @user = User.find_by :username => params[:username]
  end

  def edit
    @user = User.find_by :username => params[:username]
  end

  def update
  end
end
