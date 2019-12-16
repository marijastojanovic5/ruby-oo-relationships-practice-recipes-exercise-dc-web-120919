class Ingredient

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
     @@all
    end

    def all_allergy
        Allergy.all.select do |allergy|
            allergy.ingredient == self
        end
    end
    def users
        self.all_allergy.map do |allergy|
           allergy.user 
        end
    end
    def user_count
        self.users.count
    end

    def self.most_common_allergen
        self.all.max_by do |allergy|
            allergy.user_count
            # binding.pry
        end
      
    end


   
end
