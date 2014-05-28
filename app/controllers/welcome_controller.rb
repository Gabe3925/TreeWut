class WelcomeController < ApplicationController


  def index
    @trees = Tree.all
  end

  def create
  end



  @trees = Tree.all
    @hash = Gmaps4rails.build_markers(@trees) do |tree, marker|
      marker.lat tree.latitude
      marker.lng tree.longitude
    end



end

