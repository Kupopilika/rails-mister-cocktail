# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

Ingredient.destroy_all

# Ingredient.create(name: 'lemon')
# Ingredient.create(name: 'ice')
# Ingredient.create(name: 'mint leaves')
# Ingredient.create(name: 'vodka')
# Ingredient.create(name: 'gin')
# Ingredient.create(name: 'cucumber')
# Ingredient.create(name: 'violet sirup')
# Ingredient.create(name: 'tonic')
# Ingredient.create(name: 'aloe vera')

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = JSON.parse(open(url).read)
# puts ingredients['drinks']
ingredients['drinks'].each do |ingredient|
  Ingredient.create!(name: ingredient['strIngredient1'])
end
