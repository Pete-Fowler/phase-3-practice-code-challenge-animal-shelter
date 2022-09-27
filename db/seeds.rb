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

20.times do 
  Pet.create(
    name: Faker::Name.name, 
    age: Faker::Number.between(from: 1, to: 10), 
    species: Faker::Creature::Animal.name, 
    adopted?: Faker::Boolean.boolean(true_ratio: 0.3), 
    shelter_id: rand(1..10), 
    adopter_id: rand(1..10) 
  )

end 