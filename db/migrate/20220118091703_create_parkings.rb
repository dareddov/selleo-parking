class CreateParkings < ActiveRecord::Migration[7.0]
  def change
    create_table :parkings do |t|
      t.string :name, null: false
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
