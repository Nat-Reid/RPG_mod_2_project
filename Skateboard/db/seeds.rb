# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  World.create(setting: Faker::Address.city)
end

15.times do
  Deity.create(name: Faker::Books::Lovecraft.deity, world: World.all.sample, phrase: Faker::GreekPhilosophers.quote)
end

60.times do
  Citizen.create(name: Faker::Books::Dune.character, world: World.all.sample, phrase: Faker::Books::Dune.saying)
end

5.times do
  Spirit.create(name: Faker::Games::Pokemon.name)
end

15.times do
  Body.create(name: Faker::Movies::HitchhikersGuideToTheGalaxy.character, world: World.all.sample, spirit: Spirit.all.sample)
end
