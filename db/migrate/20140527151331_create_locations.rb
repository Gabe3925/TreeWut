class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :location, default: 'Washington DC'
      t.integer :latitude
      t.integer :longitude
    end
  end
end
