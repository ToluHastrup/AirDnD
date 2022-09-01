# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Booking.destroy_all
Dungeon.destroy_all
User.destroy_all
sam = User.create!(
email: 'beedbardard@gmail.com',
password: 'beedcricket'
)

tom = User.create!(
  email: 'been@gmail.com',
  password: 'been11'
  )


Dungeon.create!(
  name: 'big_dungeon',
  address: 'your_mums_house',
  price: 350,
  dragon: true,
  guests: 4,
  description: 'beautiful dungeon with dragons ',
  user: sam
)
Dungeon.create!(
  name: 'Comfortably_Numb',
  address: 'The_Wall',
  price: 360,
  dragon: true,
  guests: 5,
  description: 'There is no pain you are receding',
  user: tom
)
