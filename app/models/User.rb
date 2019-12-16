class User

    attr_reader :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def recipes 
        RecipeCard.all.select do |recipecard|
            recipecard.user == self
        end

    end

    def add_recipe_card(recipe,date,rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all.select do |allergy|
            allergy.user == self
        end
    end

   

    def most_recent_recipe 
        RecipeCard.all.last
    end

    def ratingsss
        self.recipes.select do |recipe|
          recipe.rating >4
          
            end
       
    end
    def top_three_recipes
        self.ratingsss.map do |recipe|
            recipe.recipe
        end
    end

           
    


end