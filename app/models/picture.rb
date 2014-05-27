class Picture < ActiveRecord::Base
  attr_accessible :url

  belongs_to :tree
end
