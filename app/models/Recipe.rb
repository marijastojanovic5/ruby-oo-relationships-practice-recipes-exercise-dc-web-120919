class Recipe 

    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self  
    end

    def self.all
        @@all
    end

# go through rc and select the whole array 
    def all_recipes
        RecipeCard.all.select do |recipecard|
            recipecard.recipe == self
        end
    end
    
    def user
        self.all_recipes.map do |recipe|
            recipe.user 
        end.uniq
    end
    def user_count
        self.user.count
    end

    def self.most_popular
        self.all.max_by do |recipe|
            recipe.user_count
            # binding.pry
        end
      
    end

    def recipeingredients
        RecipeIngredient.all.select do |ri|
            ri.recipe == self
        end
    end

    def ingredients
        self.recipeingredients.map do |ri|
            ri.ingredient
        end
    end

    def add_ingredient(name)
        RecipeIngredient.new(name)
    end
    def allergens
       
     
    end

end

 



