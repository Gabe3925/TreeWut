class Tree < ActiveRecord::Base

  has_many :pictures
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites

# Validate name -- Trees have names:
  validates :name,
    presence: true,
    length: { maximum: 50 }

  # Validate species -- Trees have a species:
  validates :species,
    presence: true,
    length: { maximum: 100 }

# Validate description -- Trees have a description:
  validates :description,
    presence: true,
    length: { maximum: 1000 }

    # Validate image_url -- cannot be too long:
  validates :image_data,
    presence: true,
    length: { maximum: 200 }


  # Validates Tree Latitude-- Low
  validates :latitude, numericality: { greater_than_or_equal_to: -90 }

  # Validates Tree Latitude-- High
  validates :latitude, numericality: { less_than_or_equal_to: 90 }

   # Validates Tree Longitude-- Low
  validates :longitude, numericality: { greater_than_or_equal_to: -180 }

   # Validates Tree Longitude-- High
  validates :longitude, numericality: { less_than_or_equal_to: 180 }

  # Validates Tree Height-- Low
  validates :height, numericality: { greater_than_or_equal_to: 0 }

   # Validates Tree Height-- High
  validates :height, numericality: { less_than_or_equal_to: 1000 }



end


