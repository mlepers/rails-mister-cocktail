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



url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredient = JSON.parse(ingredient_serialized)

ingredient["drinks"].each_with_index do |ingredient, index|
    if index < 10
    cocktail_ingredient = ingredient["strIngredient1"]
    Ingredient.new(name: cocktail_ingredient).save
    end
end



file = URI.open('https://images.unsplash.com/photo-1551024709-8f23befc6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
cocktail = Cocktail.new(name: "Mojito")
cocktail.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
cocktail.save


file = URI.open('https://images.unsplash.com/photo-1571613316887-6f8d5cbf7ef7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80')
cocktail2 = Cocktail.new(name: "Bière")
cocktail2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
cocktail2.save


