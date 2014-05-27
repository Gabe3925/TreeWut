class TreesController < ApplicationController
  before_action(:load_user, only: [:new, :create] )
  before_action(:load_tree, { only: [:edit, :update, :destroy] })

  def index
    @trees = current_user.trees
  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new(tree_params)
    @tree.user = @user
    @tree.location_url = get_location_url(@user, @tree)
    @tree.save

    redirect_to tree_path(@user)
  end

  def edit
  end

  def update
    @tree.update(tree_params)
    redirect_to user_path(@tree.user)
  end

  def destroy
    @tree.destroy
    redirect_to user_path(@tree.user)
  end

  def search
    @trees = Tree.where(name: params[:q])
  end

  private

  def load_tree
    return @tree = Tree.find_by(id: params[:user_id])
  end


  def tree_params
    params.require(:tree)
  end

  def get_location_url

  end

end
