class CreateBookingSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_slots do |t|
      t.date :date, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
