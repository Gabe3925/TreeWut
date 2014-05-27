class AddToTrees < ActiveRecord::Migration
  def change
    rename_column :trees, :location_url, :location
    add_column :trees, :latitude, :integer
    add_column :trees, :longitude, :integer
  end
end
