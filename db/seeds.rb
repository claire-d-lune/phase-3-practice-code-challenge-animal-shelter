puts "Creating shelters ..."

s1 = Shelter.create(name: "Chucky's Place", address: "1040 Blaire St.")
s2 = Shelter.create(name: "Dylan's Diamond Playhouse" , address: "3225 Blake Street")
s3 = Shelter.create(name: "Paolo's Playhouse", address: "123 Borp Street")

puts "Created"
puts "Creating adopters ..."

a1 = Adopter.create(first_name: "Blaire", last_name: "Witch")
a2 = Adopter.create(first_name: "Johnny", last_name: "Depp")
a3 = Adopter.create(first_name: "Michael", last_name: "Jackson")

puts "Creating pets ..."

p1 = Pet.create(name: "Keychain", age: 2, species: "cat", adopted?: TRUE, shelter_id: Shelter.all.sample.id, adopter_id: Adopter.all.sample.id)
p2 = Pet.create(name: "Buddy", age: 9, species: "Basketball Dog", adopted?: FALSE, shelter_id: Shelter.all.sample.id, adopter_id: Adopter.all.sample.id)
p3 = Pet.create(name: "Peggy", age: 2, species: "Rhino", adopted?: TRUE, shelter_id: Shelter.all.sample.id, adopter_id: Adopter.all.sample.id)