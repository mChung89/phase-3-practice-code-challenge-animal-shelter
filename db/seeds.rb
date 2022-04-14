20.times do
    Adopter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

3.times do
    Shelter.create(name: Faker::CryptoCoin.coin_name, address: Faker::Address.street_address)
end

6.times do
    Pet.create(name: Faker::Creature::Dog.name, age: rand(1..10), species: Faker::Creature::Dog.breed, shelter: Shelter.all.sample, adopter: Adopter.all.sample)
end