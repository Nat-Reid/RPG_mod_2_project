# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cloud = World.create(setting: Faker::Address.city, description: "a beautiful expanse of white billowy matter.", url: "https://www.airbusnewtalent.com/images/clouds.gif")
glitch = World.create(setting: Faker::Address.city, description: "the worst thing you've ever seen.", url: "https://media.boingboing.net/wp-content/uploads/2015/11/ezgif-1902210988.gif")
World.create(setting: Faker::Address.city, description: "a land of flowing water", url: "https://free-hd-wall-papers.com/images/gif-wallpaper/gif-wallpaper-15.gif" )

15.times do
  Deity.create(name: Faker::Books::Lovecraft.deity, world: World.all.sample, phrase: Faker::GreekPhilosophers.quote, defeated: false, description: Faker::SlackEmoji.emoji, riddle: "The more you take, the more you leave behind. What am I?", answer: "footsteps")

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
