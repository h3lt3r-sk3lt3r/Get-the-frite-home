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
user1 = User.create!(first_name: "Djimbo", last_name: "Flex", address: "22 Bd Vauban, 59800 Lille", email: "djimbo@outlook.fr", password: "azerty")
user2 = User.create!(first_name: "Flavie", last_name: "Flave", address: "132-140 Rue Solférino, 59800 Lille", email: "fleur@gmail.com", password: "azerty")
user3 = User.create!(first_name: "Thierry", last_name: "Roland", address: "116 Rue Meurein, 59800 Lille", email: "fleur@gmail.com", password: "azerty")
user4 = User.create!(first_name: "Daniel", last_name: "Courtin", address: "189-173 Rue Nationale, 59800 Lille", email: "fleur@gmail.com", password: "azerty")
user5 = User.create!(first_name: "Éleonore", last_name: "Létoilepolère", address: "12 Rue de la Halle, 59300 Valenciennes", email: "fleur@gmail.com", password: "azerty")
user6 = User.create!(first_name: "Fifine", last_name: "Mirtusse", address: "7-1 Rue de la Paix, 59300 Valenciennes", email: "fleur@gmail.com", password: "azerty")
user7 = User.create!(first_name: "Bubune", last_name: "Zesque", address: "5-1 Rue d'Oultreman, 59300 Valenciennes", email: "fleur@gmail.com", password: "azerty")
user8 = User.create!(first_name: "Cindy", last_name: "Sanders", address: "5bis Rue Askièvre, 59300 Valenciennes", email: "fleur@gmail.com", password: "azerty")
user9 = User.create!(first_name: "Didier", last_name: "Ridou", address: "19 Rue des Trois Visages, 62000 Arras", email: "fleur@gmail.com", password: "azerty")
user10 = User.create!(first_name: "Gaston", last_name: "Gurvignolle", address: "4 Pl. des Héros, 62000 Arras", email: "fleur@gmail.com", password: "azerty")
user11 = User.create!(first_name: "Hervé", last_name: "Chataîgne", address: "19-3 Rue Albert 1er de Belgique, 62000 Arras", email: "fleur@gmail.com", password: "azerty")
user12 = User.create!(first_name: "Helène", last_name: "Élégarsson", address: "14 Rue du Marché au Filé, 62000 Arras", email: "fleur@gmail.com", password: "azerty")

p user1
p user2
p user3
p user4
p user5
p user6
p user7
p user8
p user9
p user10
p user11
p user12
puts "Finished!"

puts "Creating stall..."
stall1 = Stall.create!(name: "Chez Momo", price_per_day: 500, description: "frites pour tous", menu_description: " Maroilles", user: user1)
stall2 = Stall.create!(name: "Fritons", price_per_day: 550, description: "frites tous les jours", menu_description: " Gouda" , user: user2)
p stall1
p stall2
puts "Finished!"
