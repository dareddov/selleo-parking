# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user_1 = User.create! name: 'John Doe', email: 'john.doe@example.com', registration_number: 'SB ABC123'
user_2 = User.create! name: 'Jane Doe', email: 'jane.doe@example.com', registration_number: 'SZY QWERTY'

location_1 = Location.create! name: 'HQ'
location_2 = Location.create! name: 'Przybyły'

parking_1 = Parking.create! name: 'HQ main', location: location_1
parking_2 = Parking.create! name: 'Przybyły main', location: location_2

ParkingSpace.create! parking: parking_1, name: 'HQ-1', owner: user_1
ParkingSpace.create! parking: parking_2, name: 'HQ-1', owner: user_2
