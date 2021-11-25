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
user1 = User.create!(first_name: "Djimbo", last_name: "Flex", address: "Lille", email: "djimbo@outlook.fr", password: "azerty")
user2 = User.create!(first_name: "Flavie", last_name: "Flave", address: "Lille", email: "fleur@gmail.com", password: "azerty")
user3 = User.create!(first_name: "Thierry", last_name: "Roland", address: "Lille", email: "troland@gmail.com", password: "azerty")
user4 = User.create!(first_name: "Daniel", last_name: "Courtin", address: "Lille", email: "dcourtin@gmail.com", password: "azerty")
user5 = User.create!(first_name: "Éleonore", last_name: "Létoilepolère", address: "Valenciennes", email: "eletoile@gmail.com", password: "azerty")
user6 = User.create!(first_name: "Fifine", last_name: "Mirtusse", address: "Valenciennes", email: "fmirtusse@gmail.com", password: "azerty")
user7 = User.create!(first_name: "Bubune", last_name: "Zesque", address: "Valenciennes", email: "bzesque@gmail.com", password: "azerty")
user8 = User.create!(first_name: "Cindy", last_name: "Sanders", address: "Valenciennes", email: "csanders@gmail.com", password: "azerty")
user9 = User.create!(first_name: "Didier", last_name: "Ridou", address: "Arras", email: "dridou@gmail.com", password: "azerty")
user10 = User.create!(first_name: "Gaston", last_name: "Gurvignolle", address: "Arras", email: "ggurvignolle@gmail.com", password: "azerty")
user11 = User.create!(first_name: "Hervé", last_name: "Chataîgne", address: "Arras", email: "hchataigne@gmail.com", password: "azerty")
user12 = User.create!(first_name: "Helène", last_name: "Élégarsson", address: "Arras", email: "helegarsson@gmail.com", password: "azerty")

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
stall1 = Stall.create!(name: "Chez Momo", price_per_day: 500, address: "22 Bd Vauban, 59800 Lille", description: "Frites pour tous", menu_description: " Maroilles", user: user1)
stall2 = Stall.create!(name: "Fritons", price_per_day: 570, address: "132-140 Rue Solférino, 59800 Lille", description: "Frites tous les jours", menu_description: " Gouda" , user: user2)
stall3 = Stall.create!(name: "SuperFrite", price_per_day: 520, address: "116 Rue Meurein, 59800 Lille", description: "Frites délicieuses", menu_description: " Fricadelle" , user: user3)
stall4 = Stall.create!(name: "AEF Frite", price_per_day: 590, address: "189-173 Rue Nationale, 59800 Lille", description: "Ici on se régalle", menu_description: " Hamburger" , user: user4)
stall5 = Stall.create!(name: "TerminaFrites", price_per_day: 510, address: "12 Rue de la Halle, 59300 Valenciennes", description: "Mangez et ne bougez pas", menu_description: " Mexicanos" , user: user5)
stall6 = Stall.create!(name: "Retour vers la friture", price_per_day: 560, address: "7-1 Rue de la Paix, 59300 Valenciennes", description: "Régalez-vous comme des fous", menu_description: " Americain steak" , user: user6)
stall7 = Stall.create!(name: "Ch'ti Glouton", price_per_day: 530, address: "5-1 Rue d'Oultreman, 59300 Valenciennes", description: "Prépaprez vos estomacs", menu_description: " Americain savoyard" , user: user7)
stall8 = Stall.create!(name: "Les gros ventres", price_per_day: 540, address: "5bis Rue Askièvre, 59300 Valenciennes", description: "Des bonnes patates", menu_description: " Americain paté" , user: user8)
stall9 = Stall.create!(name: "MEGA FRITE", price_per_day: 550, address: "19 Rue des Trois Visages, 62000 Arras", description: "C'est bon comme là-bas", menu_description: " Americain morbier" , user: user9)
stall10 = Stall.create!(name: "Frites and Love", price_per_day: 520, address: "4 Pl. des Héros, 62000 Arras", description: "Vous reviendrez !", menu_description: " Americain cheval" , user: user10)
stall11 = Stall.create!(name: "Patates de forains", price_per_day: 570, address: "19-3 Rue Albert 1er de Belgique, 62000 Arras", description: "Frites et amour", menu_description: " Americain dragibus" , user: user11)
stall12 = Stall.create!(name: "Fred Franck Frites", price_per_day: 560, address: "14 Rue du Marché au Filé, 62000 Arras", description: "On s'embrasse on oublie tout", menu_description: " Americain mousse de foie" , user: user12)

p stall1
p stall2
p stall3
p stall4
p stall5
p stall6
p stall7
p stall8
p stall9
p stall10
p stall11
p stall12
puts "Finished!"
