# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Name.create([
  { name: "Scott" },
  { name: "Conan" },
  { name: "Chris Kringle" },
  { name: "Sterling Archer" },
  { name: "Malcolm Reynolds" },
  { name: "Oswald Cobblepot" },
  { name: "Benedict Cumberbatch" },
  { name: "Englebert Humperdinck" },
  { name: "Albus Percival Wulfric Brian Dumbledore" }
])

20.times do
  name = ''
  (rand(3) + 1).times do
    name += "#{Faker::Name.first_name} "
  end
  name += Faker::Name.last_name
  Name.create({ name: name });
end
