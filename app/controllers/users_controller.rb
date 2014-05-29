class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  before_action :require_current_user, except: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @favorites = Favorite.find(params[:id])
      #@hash = Gmaps4rails.build_markers(@favorites) do |favorite, marker|
      #  @favorite = favorite
      #  marker.lat favorite.tree_id.latitude
      #  marker.lng favorite.tree_id.longitude
      #  marker.infowindow render_to_string(:partial => "/welcome/info_window", :locals => { :object => tree}).gsub(/\n/, '')
      #  marker.picture({
      #              :url => "http://img4.wikia.nocookie.net/__cb20100610115010/frontierville/images/thumb/a/a8/Oak_Tree-icon.png/40px-Oak_Tree-icon.png",
      #              :width   => 80,
      #              :height  => 80
      #      })
      #  #marker.infowindow tree.description
#
      #end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password,
      :password_confirmation
    )
  end

  def require_current_user
    if !current_user?(@user)
      redirect_to root_path
    end
  end
end
