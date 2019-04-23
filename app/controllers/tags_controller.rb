class TagsController < ApplicationController
  def create
    tag = Tag.new tag_params
    unless tag.save
      flash[:tagerror] = "Tag name already in use."
    end
  end

  def destroy
    #TODO make this called with proper param
    tag = Tag.find params[:id]
    tag.destroy
  end

  private
  def tag_params
    params.require(:tag).permit(:name, :user_id)
  end
end
