class PagesController < ApplicationController
  def home
  end

  def new
    @user = User.find_by :urlname => params[:urlname]
    @glossary = Glossary.new
  end

  def create
  end

  def view
    @glossary = Glossary.find_by :urlname => params[:pagename]
  end

  def edit
    @glossary = Glossary.find_by :urlname => params[:pagename]
  end

  def update
    
  end
end
