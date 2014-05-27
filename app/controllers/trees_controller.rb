class TreesController < ApplicationController


  def index
    @trees = Tree.all
    @json = @trees.to_gmaps4rails
  end

  def new
    @tree = Tree.new
    @picture = Picture.new
    @users = User.all
  end

  def create
    @tree = Tree.new
    @tree.name = params[:tree][:name]
    @tree.location = params[:tree][:location]
    @tree.save

    @picture = Picture.new
    @picture.url = params[:URL]
    @picture.tree = @tree
    @picture.save

    redirect_to @tree
  end

  def show
    @tree = Tree.find(params[:id])
    @favorite = Favorite.new
    location = Array.new
    location << {
      'description' => @tree.location,
      'lng' => @tree.longitude,
      'lat' => @tree.latitude
    }
    @gmaps_json = location.to_json
  end

  def edit
    @tree = Tree.find(params[:id])

  end

  def update

  end


  private

  def load_tree
    return @tree = Tree.find_by(id: params[:user_id])
  end


  def tree_params
    params.require(:tree)
  end



end
