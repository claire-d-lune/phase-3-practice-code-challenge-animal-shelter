class Adopter < ActiveRecord::Base
    has_many :pets
    has_many :shelters, through: :pets

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def adopt(pet)
        if !pet.adopted?
            pet.update(adopted?: TRUE, adopter_id: self.id)
        end
    end

    def fave_pet
        self.count 
    end
end
