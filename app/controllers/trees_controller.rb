class TreesController < ApplicationController
  before_action :make_map, only: [:index ]
  before_action :find_tree, only: [:show, :edit, :update, :destroy]


  def index
  end

  def new
    @tree = Tree.new
    @picture = Picture.new
  end

  def create
    @tree = Tree.new(tree_params)
    @tree.save

    redirect_to trees_path
  end

  def show
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
  end

  def update
    @tree.update(tree_params)
    redirect_to @tree
  end

  def destroy
    @tree.destroy
    redirect_to trees_path
  end

  def search
    lower_query = params[:q].downcase
    @trees = Tree.where("lower(name) like '%#{lower_query}%'")
  end

  private #=================================================================================

  def load_tree
    return @tree = Tree.find_by(id: params[:user_id])
  end

  def find_tree
    @tree = Tree.find(params[:id])
  end

  def tree_params
    params.require(:tree).permit(:name, :species, :latitude, :longitude, :description, :height, :image_data)
  end

  def make_map
  #THIS IS THE MAP FOR SHOWING IN INDIVIDUAL TREE PROFILES but build_markers is broken and hanging up.
  #TO RE-ENABLE, recomment 'before' at top. see above.
  #def make_map
   @trees = Tree.all
   @hash = Gmaps4rails.build_markers(@trees) do |tree, marker|
     marker.lat tree.latitude
     marker.lng tree.longitude
    end
  end




end
