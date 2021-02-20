# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.delete_all
puts "Deleting current Database.."

puts "Creating Database.."

Ingredient.create(name: "Tequila")
Ingredient.create(name: "Gin")
Ingredient.create(name: "Rum")
Ingredient.create(name: "Vodka")
Ingredient.create(name: "Orange Liquor")

Ingredient.create(name: "Lime")
Ingredient.create(name: "Lemon")
Ingredient.create(name: "Sugar")
Ingredient.create(name: "Mint leaves")
Ingredient.create(name: "Orange Juice")

puts "Done!"
