require_relative '../config/environment.rb'
require 'pry'

marija = User.new("Marija")
amia = User.new("Amia")
skyler = User.new("Skyler")

recipe1 = Recipe.new("Tiramisu")
recipe2 = Recipe.new("Curry Chicken")
recipe3 = Recipe.new("Pizza")
recipe4 = Recipe.new("Burger")


recipecard1 = RecipeCard.new(Time.now, 5, recipe2, marija)
recipecard2 = RecipeCard.new(Time.now, 4, recipe4, amia)
recipecard3 = RecipeCard.new(Time.now, 4, recipe4, amia)
recipecard4 = RecipeCard.new(Time.now, 5, recipe1, marija)
recipecard5 = RecipeCard.new(Time.now, 5, recipe4, skyler)
recipecard6 = RecipeCard.new(Time.now, 5, recipe4, skyler)





ingredient1 = Ingredient.new("Sugar")
ingredient2 = Ingredient.new("Milk")
ingredient3 = Ingredient.new("Eggs")
ingredient4 = Ingredient.new("Flour")

recing1 = RecipeIngredient.new(recipe2, ingredient1)
recing2 = RecipeIngredient.new(recipe1, ingredient4)
recing3 = RecipeIngredient.new(recipe2, ingredient2)
recing4 = RecipeIngredient.new(recipe2, ingredient3)

allergy1 = Allergy.new(amia,ingredient3)
allergy2 = Allergy.new(marija,ingredient2)
allergy3 = Allergy.new(marija,ingredient1)
allergy4 = Allergy.new(amia, ingredient2)









puts Recipe.most_popular

binding.pry
