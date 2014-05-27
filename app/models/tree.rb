class Tree < ActiveRecord::Base

  acts_as_gmappable

  def gmaps4rails_address
    "#{name}, #{state}"
  end

  geocoded_by :location
  after_validation :geocode, :if => :location_changed?
  has_many :pictures
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
end


