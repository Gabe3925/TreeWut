class AddGmappableToTrees < ActiveRecord::Migration
  def change
    add_column :trees, :gmaps, :boolean
  end
end


