class Booking < ApplicationRecord
  belongs_to :parking_space
  belongs_to :user

  validates :date,
            presence: true

  validate :date_not_past, on: :create
  validate :vacant, on: :create
  validate :not_own

  def date_not_past
    errors.add(:date, 'cannot be in past') if date.past?
  end

  def vacant
    errors.add(:base, 'already taken') if taken?
  end

  def not_own
    errors.add(:base, 'you already own this space') if own?
  end

  private

  def vacant?
    !taken?
  end

  def taken?
    Booking.exists? parking_space: parking_space, date: date
  end

  def own?
    user.present? && parking_space&.owner == user
  end
end
