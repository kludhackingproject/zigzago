# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#Destruction des Users, 
print "-"*10, "Beginning seed", "-"*10,"\n"
puts "Emptying all tables"
User.destroy_all
puts "All tables are empty"

#Création des Users
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

#On indique le nombre de User, généré 
print "-"*10, "Displaying tables count", "-"*10,"\n"
puts "User.count : #{User.count}"

print "-"*10, "Seed is done", "-"*10, "\n"