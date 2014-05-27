class Tree < ActiveRecord::Base
  has_many :favorites, dependent: :destroy
  belongs_to :users through :favorite






end
