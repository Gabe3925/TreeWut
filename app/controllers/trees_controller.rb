class TreesController < ApplicationController
  before_action :make_map, only: [:index ]


  def index

  end

  def new
    @tree = Tree.new
    @picture = Picture.new
  end

  def create
    @tree = Tree.new(tree_params)
    @tree.save

    @picture = Picture.new
    @picture.url = params[:URL]
    @picture.tree = @tree
    @picture.save

    redirect_to trees_path
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
    params.require(:tree).permit(:name, :species, :latitude, :longitude, :description, :height)
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
