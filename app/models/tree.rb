class Tree < ActiveRecord::Base

  has_many :pictures
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites




end


