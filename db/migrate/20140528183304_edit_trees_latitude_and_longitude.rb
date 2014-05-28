class EditTreesLatitudeAndLongitude < ActiveRecord::Migration
  def change
    change_column :trees, :latitude,  :float
    change_column :trees, :longitude,  :float
  end
end
