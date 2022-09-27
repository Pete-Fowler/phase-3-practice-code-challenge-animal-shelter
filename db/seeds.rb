require 'faker'

puts "Seeding..."

5.times do 
  Adopter.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )

  Shelter.create(
    name: Faker::Name.name, 
    address: Faker::Address.street_address 
  )
end

10.times do 
  Pet.create(
    name: Faker::Name.name, 
    age: Faker::Number.between(from: 1, to: 10), 
    species: Faker::Creature.Animal.name, 
    adopted?: Faker::Boolean.boolean, 
    shelter_id: Faker::Number.unique.between(from:1, to: 5), 
    adopter_id: Faker::Number.unique.between(from:1, to: 5)
  )
end 

end 