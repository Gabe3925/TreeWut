class WelcomeController < ApplicationController


  def index
    @trees = Tree.all
    @hash = Gmaps4rails.build_markers(@trees) do |tree, marker|
      @tree = tree
      marker.lat tree.latitude
      marker.lng tree.longitude
      marker.infowindow render_to_string(:partial => "/welcome/info_window", :locals => { :object => tree}).gsub(/\n/, '')
      marker.picture({
                  :url => "http://img4.wikia.nocookie.net/__cb20100610115010/frontierville/images/thumb/a/a8/Oak_Tree-icon.png/40px-Oak_Tree-icon.png",
                  :width   => 80,
                  :height  => 80
          })
      #marker.infowindow tree.description

    end
  end

  def create
  end

end

