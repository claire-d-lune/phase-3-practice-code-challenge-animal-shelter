class Pet < ActiveRecord::Base
    belongs_to :shelter
    belongs_to :adopter

    def self.oldest
        self.all.max_by {|pet| pet.age}
    end

    def self.average_age
        self.average(:age).to_f
    end

    def in_dog_years
        if self.species == "Dog"
            self.age * 5
        else
            "Not a dog dummy"
        end
    end
end
