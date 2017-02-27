# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

1.times do
  Movie.create!(title: "Lego Movie", runtime: 90)
end

1.times do
  Movie.create!(title: "Batman", runtime: 90)
end

1.times do
  Auditorium.create!(room: 1, capacity: 3)
end

1.times do
  Auditorium.create!(room: 2, capacity: 10)
end

1.times do
  Showtime.create!(showdate: Date.new(2017, 03, 02), start_time: DateTime.new(2017, 01, 03, 10, 30, 0), end_time: DateTime.new(2017, 01, 03, 12, 00, 0), tickets_sold: 0, price: 10.00, movie_id: 1, auditorium_id: 2)
end

1.times do
  Showtime.create!(showdate: Date.new(2017, 04, 03), start_time: DateTime.new(2017, 04, 03, 14, 00, 0), end_time: DateTime.new(2017, 04, 03, 15, 30, 0), tickets_sold: 0, price: 10.00, movie_id: 2, auditorium_id: 2)
end

1.times do
   Order.create!(name: Faker::Name.name, email: Faker::Internet.email, credit_card: '4111111111111111', expiration: Date.new(2019, 02, 27), total: 10.00, showtime_id: 2)
end