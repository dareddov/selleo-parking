class Booking < ApplicationRecord
  belongs_to :parking_space
  belongs_to :user

  validates :date,
            presence: true

  validate :date_not_past, on: :create
  validate :not_already_taken, on: :create
  validate :not_own
  validate :slot_must_exist

  def date_not_past
    errors.add(:date, 'cannot be in past') if date.past?
  end

  def not_already_taken
    errors.add(:base, 'already taken') if taken?
  end

  def not_own
    errors.add(:base, 'you already own this space') if own?
  end

  def slot_must_exist
    errors.add(:base, 'this place is not to be taken') unless slot_exists?
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

  def slot_exists?
    BookingSlot.exists? date: date, user: parking_space&.owner
  end
end
