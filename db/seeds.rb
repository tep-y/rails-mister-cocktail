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

# puts 'Creating Ingredients..'
# puts '...'

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# file = open(url).read
# ingredients = JSON.parse(file)

# ingredients['drinks'].each do |ingredient|
#   Ingredient.create(name: ingredient['strIngredient1'])
# end

puts 'Creating Cocktails..'
puts '...'

alcohol = [
  'tequila', 'rum', 'vodka', 'gin', 'whisk(e)y', 'brandy', 
  'vermouth', 'liqueur', 'non-alcoholic', 'beer', 'wine', 'other'
]


40.times do
  rand_num = rand(3..7)
  
  faker_array_ing = []
  rand_num.times do
    faker_array_ing << "#{Faker::Food.measurement} #{Faker::Food.ingredient}<br>"
  end

  faker_array_des = []
  rand_num.times do
    faker_array_des << Faker::Food.description
  end

  ing_cocktail = faker_array_ing.join(" ")
  des_cocktail = faker_array_des.join(" ")

  Cocktail.create!(
    name: Faker::Coffee.unique.blend_name[0..12],
    description: des_cocktail,
    alcohol: alcohol.sample,
    ingredient: "#{ing_cocktail} #{Faker::Food.measurement}",
    kind: 'creation',
    rating: rand(1..5)
  )
  # c.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
end

mojito = Cocktail.create!(
  name: 'mojito',
  description: 'Gather the ingredients. In a highball glass, add the sugar, mint leaves, and a splash of the club soda. Muddle just enough to dissolve the sugar and release the flavor of the mint. Squeeze the juice from the 2 halves of lime into the glass. Drop 1 squeezed half into the glass if you like. Add the rum and stir well. Fill the glass with ice cubes and top with club soda. Garnish with a mint sprig. Serve and enjoy.',
  ingredient: "2 teaspoons superfine sugar<br>
  6 to 8 fresh mint leaves<br>
  2 to 3 ounces club soda, divided; to taste<br>
  1 lime<br>
  2 ounces light rum<br>
  Mint sprig, garnish",
  alcohol: 'rum',
  rating: '4',
  kind: 'classic',
  tag: 'mojito.jpg'
)

pina = Cocktail.create!(
  name: 'piña colada',
  description: 'Add the rum, cream of coconut and pineapple and lime juices to a shaker with ice and shake vigorously for 20 to 30 seconds. Strain into a chilled Hurricane glass over pebble ice. Garnish with a pineapple wedge and pineapple leaf.',
  ingredient: "2 ounces light rum<br>
1 1/2 ounces cream of coconut<br>
  1 1/2 ounces pineapple juice<br>
  1/2 ounce lime juice, freshly squeezed<br>
  Garnish: pineapple wedge<br>
  Garnish: pineapple leaf",
  alcohol: 'rum',
  rating: '3',
  kind: 'classic',
  tag: 'pina.jpg'
)

old_fash = Cocktail.create!(
  name: 'old fashioned',
  description: 'Add the sugar and bitters to a rocks glass, then add water, and stir until sugar is nearly dissolved. Fill the glass with large ice cubes, add the bourbon, and gently stir to combine. Express the oil of an orange peel over the glass, then drop in.',
  ingredient: "1/2 teaspoon sugar<br>
  3 dashes Angostura bitters<br>
  1 teaspoon water<br>
  2 ounces bourbon<br>
  Garnish: orange peel",
  alcohol: 'whisk(e)y',
  rating: '3',
  kind: 'classic',
  tag: 'old_fash.jpg'
)

negroni = Cocktail.create!(
  name: 'negroni',
  description: 'Add the gin, Campari and sweet vermouth to a mixing glass filled with ice, and stir until well-chilled. Strain into a rocks glass filled with large ice cubes. Garnish with an orange peel.',
  ingredient: "1 ounce gin<br>
  1 ounce Campari<br>
  1 ounce sweet vermouth<br>
  Garnish: orange peel",
  alcohol: 'gin',
  rating: '5',
  kind: 'classic',
  tag: 'negroni.jpg'
)

margarita = Cocktail.create!(
  name: 'margarita',
  description: 'Add tequila, orange liqueur, lime juice and agave syrup to a cocktail shaker filled with ice, and shake until well-chilled. Strain into a rocks glass over fresh ice. Garnish with a lime wheel and kosher salt (optional).',
  ingredient: "2 ounces blanco tequila<br>
  1/2 ounce orange liqueur<br>
  1 ounce lime juice, freshly squeezed<br>
  1/2 ounce agave syrup<br>
  Garnish: lime wheel<br>
  Garnish: kosher salt (optional)",
  alcohol: 'tequila',
  rating: '5',
  kind: 'classic',
  tag: 'margarita.jpg'
)

caesar = Cocktail.create!(
  name: 'bloody caesar',
  description: 'Coat the rim of a tall glass with celery salt, fill with ice and set aside. Add the vodka, Clamato juice, Worcestershire sauce, Tabasco and horseradish into a mixing glass with ice. Pour back and forth into another mixing glass a few times to combine. Strain into the prepared glass. Garnish with a cucumber spear, lime wedge and celery stalk.',
  ingredient: "Celery salt, to rim glass<br>
  1 1/2 ounces vodka<br>
  4 ounces Clamato juice<br>
  2 dashes Worcestershire sauce<br>
  2 dashes Tabasco sauce<br>
  Prepared horseradish, to taste (optional)<br>
  Garnish: cucumber spear<br>
  Garnish: lime wedge<br>
  Garnish: celery stalk",
  alcohol: 'vodka',
  rating: '4',
  kind: 'classic',
  tag: 'caesar.jpg'
)

moscow = Cocktail.create!(
  name: 'moscow mule',
  description: 'Fill a Moscow Mule mug (or highball glass) with ice, then add the vodka and lime juice. Add the ginger beer. Garnish with a lime wheel.',
  ingredient: "2 ounces vodka<br>
  1/2 ounce lime juice, freshly squeezed<br>
  3 ounces ginger beer<br>
  Garnish: lime wheel",
  alcohol: 'vodka',
  rating: '4',
  kind: 'classic',
  tag: 'moscow.jpg'
)

vieux_carre = Cocktail.create!(
  name: 'vieux carré',
  description: 'Add the rye whiskey, cognac, sweet vermouth, Bénédictine and bitters into a mixing glass with ice and stir until well-chilled. Strain into a rocks glass over fresh ice or a cocktail glass. Garnish with a cherry, a lemon twist or both.',
  ingredient: "3/4 ounce George Dickel rye whiskey<br>
  3/4 ounce cognac<br>
  3/4 ounce sweet vermouth<br>
  2 teaspoons Bénédictine liqueur<br>
  4 dashes Dale DeGroff’s pimento aromatic bitters<br>
  Garnish: maraschino cherry or lemon twist",
  alcohol: 'brandy',
  rating: '4',
  kind: 'classic',
  tag: 'vieux_carre.jpg'
)

sidecar = Cocktail.create!(
  name: 'sidecar',
  description: 'Coat the rim of a coupe glass with sugar, if desired, and set aside. Add the cognac, orange liqueur and lemon juice to a shaker with ice and shake until well-chilled. Strain into the prepared glass. Garnish with an orange twist.',
  ingredient: "1 1/2 ounces cognac<br>
  3/4 ounce orange liqueur (such as Cointreau)<br>
  3/4 ounce lemon juice, freshly squeezed<br>
  Garnish: orange twist<br>
  Garnish: sugar rim (optional)",
  alcohol: 'brandy',
  rating: '4',
  kind: 'classic',
  tag: 'sidecar.jpg'
)

last_word = Cocktail.create!(
  name: 'last word',
  description: 'Add the gin, green Chartreuse, maraschino liqueur and lime juice into a shaker with ice and shake until well-chilled. Strain into a chilled coupe glass. Garnish with a brandied cherry (optional).',
  ingredient: "3/4 ounce gin<br>
  3/4 ounce green Chartreuse<br>
  3/4 ounce maraschino liqueur<br>
  3/4 ounce lime juice, freshly squeezed<br>
  Garnish: brandied cherry (optional)",
  alcohol: 'gin',
  rating: '5',
  kind: 'classic',
  tag: 'last_word.jpg'
)

daiquiri = Cocktail.create!(
  name: 'daiquiri',
  description: 'Add the rum, lime juice and demerara sugar syrup to a shaker with ice, and shake until well-chilled. Strain into a chilled coupe. Garnish with a lime twist.',
  ingredient: "2 ounces light rum<br>
  1 ounce lime juice, freshly squeezed<br>
  3/4 ounce demerara sugar syrup<br>
  Garnish: lime twist",
  alcohol: 'rum',
  rating: '4',
  kind: 'classic',
  tag: 'daiquiri.jpg'
)
# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# article = Cocktail.create!(name: 'NES', description: "A great console")
# article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


puts 'Completed!'
