class User < ApplicationRecord
  validates :name,
            :email,
            :registration_number,
            presence: true

  has_one :parking_space
end
