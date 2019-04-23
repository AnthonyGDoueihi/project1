class GlossariesController < ApplicationController
  def create
    gloss = Glossary.new gloss_params
    gloss.urlname = gloss.title.gsub(" ","-").downcase

    unless gloss.save
      flash[:glosserror] = "Glossary name already in use."
    end
  end

  def destroy
    #TODO make this called with proper param
  end

  private
  def gloss_params
    params.require(:glossary).permit(:title, :user_id)
  end
end
