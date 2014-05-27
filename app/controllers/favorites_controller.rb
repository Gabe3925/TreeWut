class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new
    @favorite.user = current_user
    @favorite.piece = Tree.find(params[:tree_id])
    @favorite.save
    redirect_to current_user
  end
  def destroy
    Favorite.destroy(params[:tree_id])
    redirect_to current_user
  end
end
