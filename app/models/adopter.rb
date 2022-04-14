class Adopter < ActiveRecord::Base
    has_many :pets
    has_many :shelters, through: :pets

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def adopt pet
        pet.update(adopted?: true, adopter_id: self.id)
    end

    def fav_pet
        self.pets ? self.pets.group(:species).count.max_by {|species| species.count} : nil
    end
end