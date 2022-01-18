class ParkingSpace < ApplicationRecord
  belongs_to :parking
  belongs_to :owner, class_name: 'User'

  validates :name,
            presence: true
end
