# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




require 'json'
require 'open-uri'

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

Cocktail.new(name: "Mojito").save
Cocktail.new(name: "Tequila").save

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredient = JSON.parse(ingredient_serialized)

ingredient["drinks"].each_with_index do |ingredient, index|
    if index < 10
    cocktail_ingredient = ingredient["strIngredient1"]
    Ingredient.new(name: cocktail_ingredient).save
    end
end




