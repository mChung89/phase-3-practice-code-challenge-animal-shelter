class Shelter < ActiveRecord::Base
    has_many :pets
    has_many :adopters, through: :pets

    def current_pets
        self.pets.where(adopted?: nil)
    end

    def adopted_pets
        self.pets.where(adopted?: true)
    end
end
