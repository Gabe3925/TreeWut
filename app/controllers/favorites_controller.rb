class FavoritesController < ApplicationController

  def create
    @tree = Tree.find(params[:tree_id])
    if current_user.purchase(@tree)
      redirect_to user_treess_path(current_user)
    else
      redirect_to trees_path(@tree)
    end
  end

end
