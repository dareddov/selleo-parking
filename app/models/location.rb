class Location < ApplicationRecord
  validates :name,
            presence: true

  has_many :parkings
  has_many :parking_spaces, through: :parkings
end
