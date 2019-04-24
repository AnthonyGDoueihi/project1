class GlossariesController < ApplicationController
  def create
    gloss = Glossary.new gloss_params
    gloss.urlname = gloss.title.gsub(" ","-").downcase

    unless tag.save
      flash[:glosserror] = "Gloss name already in use."
    end
  end

  def destroy
    puts '-=' * 40
    tag = Glossary.find params[:id]
    tag.destroy
  end

  private
  def gloss_params
    params.require(:glossary).permit(:title, :user_id)
  end
end
