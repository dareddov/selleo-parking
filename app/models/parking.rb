class Parking < ApplicationRecord
  belongs_to :location
  has_many :parking_spaces
end
