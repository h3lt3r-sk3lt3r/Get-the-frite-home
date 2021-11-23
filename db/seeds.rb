# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Stall.destroy_all
User.destroy_all


puts "Creating user..."
user1 = User.create!(first_name: "Djimbo", last_name: "Flex", address: "65 rue des confétis Lille", email: "djimbo@outlook.fr", password: "azerty")
user2 = User.create!(first_name: "Flavie", last_name: "Flave", address: "79 rue des tulipes Hem", email: "fleur@gmail.com", password: "azerty")
p user1
p user2
puts "Finished!"

puts "Creating stall..."
stall1 = Stall.create!(name: "Chez Momo", price_per_day: 500, description: "frites pour tous", menu_description: " Maroilles", user: user1)
stall2 = Stall.create!(name: "Fritons", price_per_day: 550, description: "frites tous les jours", menu_description: " Gouda" , user: user2)
p stall1
p stall2
puts "Finished!"
