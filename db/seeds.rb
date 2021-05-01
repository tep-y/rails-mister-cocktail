# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'
require 'faker'

puts 'Deleting current Database..'
Ingredient.delete_all
Cocktail.delete_all

puts 'Creating Ingredients..'
puts '...'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
file = open(url).read
ingredients = JSON.parse(file)

ingredients['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

puts 'Creating Cocktails..'
puts '...'

alc = [
  'tequila', 'rum', 'vodka', 'gin', 'whisk(e)y', 'brandy', 
  'vermouth', 'liquer', 'non-alcoholic', 'beer', 'wine', 'other'
]

# 10.times do
#   Cocktail.create(
#     name: Faker::Coffee.blend_name,
#     description: Faker::Lorem.paragraph,
#     alcohol: alc.sample
#   )
#   # c.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
# end

mojito = Cocktail.create!(
  name: 'mojito',
  description: 'Gather the ingredients.
  In a highball glass, add the sugar, mint leaves, and a splash of the club soda.
  Muddle just enough to dissolve the sugar and release the flavor of the mint.
  Squeeze the juice from the 2 halves of lime into the glass. Drop 1 squeezed half into the glass if you like.
  Add the rum and stir well.
  Fill the glass with ice cubes and top with club soda
  Garnish with a mint sprig. Serve and enjoy.',
  ingredient: '2 teaspoons superfine sugar
  6 to 8 fresh mint leaves
  2 to 3 ounces club soda, divided; to taste
  1 lime
  2 ounces light rum
  Mint sprig, garnish',
  alcohol: 'rum'
)

# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# article = Cocktail.create!(name: 'NES', description: "A great console")
# article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


puts 'Completed!'
