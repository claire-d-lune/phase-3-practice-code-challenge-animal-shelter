class Shelter < ActiveRecord::Base
    has_many :pets
    has_many :adopters, through: :pets

    # def current_pets
    #     cur_pets = self.pets.filter do |pet|
    #         !pet.adopted?
    #     end
    #     cur_pets
    # end

    def current_pets
        self.pets.where(adopted?: FALSE)
    end

    def adopted_pets
        self.pets.where(adopted?: TRUE)
    end
end
