# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#Destroying Users, favorites and apisearches
print "-"*10, "Beginning seed", "-"*10,"\n"
puts "Emptying all tables"
User.destroy_all
Favorite.destroy_all
Apisearche.destroy_all
puts "All tables are empty"

#Creating des Users
puts "Creating users"
25.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "#{Faker::Name.first_name}@yopmail.com",
    password: "thp_test"
  )
end
puts "done"

#Creating favorites
puts "Creating favorites"
25.times do
    Favorite.create(
      city_departure: Faker::Address.city,
      destination: Faker::Address.city,
      price: Faker::Number.decimal(2),
      departure_date: Faker::Date.backward(200),
      return_date: Faker::Date.forward(200)
  end
puts "done"

#Creating apisearches
puts "Creating apisearches"
25.times do
    Apisearche.create(
      city_departure: Faker::Address.city,
      price: Faker::Number.decimal(2),
      departure_date: Faker::Date.backward(200),
      return_date: Faker::Date.forward(200)
  end
puts "done"

#Showing how many Users, favorites and apisearches are created
print "-"*10, "Displaying tables count", "-"*10,"\n"
puts "User.count : #{User.count}"
puts "Favorite.count : #{Favorite.count}"
puts "Apisearche.count : #{Apisearche.count}"

print "-"*10, "Seed is done", "-"*10, "\n"