class FavoritesController < ApplicationController

  def create
    @favorite = Favorite.new
    @favorite.user_id = current_user[:id]
    @favorite.tree_id = current_tree[:id]
    @favorite.save
    redirect_to current_user
  end

  def destroy
    Favorite.destroy(params[:tree_id])
    redirect_to current_user
  end

end
