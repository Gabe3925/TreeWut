class WelcomeController < ApplicationController


  def index
    @trees = Tree.all
    @hash = Gmaps4rails.build_markers(@trees) do |tree, marker|
      marker.lat tree.latitude
      marker.lng tree.longitude
    end
  #@json = hash.to_json

  end

  def create
  end








end

