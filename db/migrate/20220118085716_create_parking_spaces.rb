class CreateParkingSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table :parking_spaces do |t|
      t.string :name, null: false
      t.references :parking, null: false, foreign_key: true
      t.references :owner, null: false

      t.timestamps
    end
  end
end
