class NodesController < ApplicationController
  def create

    node = Node.new :name => params[:name], :user_id => params[:user_id]
    node.parent = Node.find_by :id => params[:id]

    unless node.save
      flash[:nodeerror] = "Directory name already in use."
    end

  end

  def destroy
    #TODO make this called with proper param
  end

  private
  def node_params
    params.require(:nodes).permit(:name, :user_id)
  end
end
