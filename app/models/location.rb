class Location < ActiveRecord::Base


  # acts_as_gmappable :process_geocoding => false

  def gmaps4rails_address
   self.location
  end

 geocoded_by :location
 after_validation :geocode, :if => :location_changed?

end
