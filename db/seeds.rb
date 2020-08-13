# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

mojito = Cocktail.new(name: "Mojito")
mojito.save
Cocktail.new(name: "Tequila").save

menthe = Ingredient.new(name: "Menthe")
menthe.save 

fraise = Ingredient.new(name: "Fraise")
fraise.save 



a_lot = Dose.new(description: "a lot")
a_lot.cocktail = mojito
a_lot.ingredient = menthe
a_lot.save

a_few = Dose.new(description: "a fiew")
a_few.cocktail = mojito
a_few.ingredient = fraise
a_few.save