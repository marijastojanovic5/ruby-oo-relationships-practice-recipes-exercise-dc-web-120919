class Allergy

    
    attr_accessor :user, :ingredient

    @@all = []

    def initialize(user, ingredient)
        @user = user
        @ingredient = ingredient
        @@all << self
    end

    def self.all
        @@all
    end

    def ingr_allergy
        Allergy.all.map do |allergy|
           allergy.ingredient
        end
    end
end
    