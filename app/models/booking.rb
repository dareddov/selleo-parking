class Booking < ApplicationRecord
  belongs_to :parking_space
  belongs_to :user

  validates :date,
            presence: true
end
