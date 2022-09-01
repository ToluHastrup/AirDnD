# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
sam = User.create(
email: 'beedbardard@gmail.com',
password: 'beedcricket'
)
Dungeon.create(
  name: 'big_dungeon',
  address: 'your_mums_house',
  price: 350,
  dragon: true,
  guests: 4,
  description: 'beautiful dungeon with thicc dragons ',
  user: sam
)
Dungeon.create(
  name: 'Comfortably_Numb',
  address: 'The_Wall',
  price: 350,
  dragon: true,
  guests: 4,
  description: 'There is no pain you are receding',
  user: sam
)
Dungeon.create(
  name: 'big_dungeon',
  address: 'your_mums_house',
  price: 350,
  dragon: true,
  guests: 4,
  description: 'Impressive. Very Nice',
  user: sam
)

Booking.create(
  dates: 30
)
