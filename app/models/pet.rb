class Pet < ActiveRecord::Base
    belongs_to :shelter
    belongs_to :adopter

    def self.oldest
        self.all.max_by {|pet| pet.age}
    end

    def self.average_age
        self.pluck(:age).sum / self.all.count
    end

    def in_dog_years
        self.species == dog ? self.age * 5 : "Not a dog"
    end
end
