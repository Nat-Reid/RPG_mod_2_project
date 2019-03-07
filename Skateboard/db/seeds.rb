# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
World.destroy_all
Deity.destroy_all
Citizen.destroy_all
Core.destroy_all




@riddles = {
    "1" => {
        "riddle" => "I am the beginning of the end, and the end of time and space. I am essential to creation, and I surround every place. What am I?",
        "answer" => "e"
    },
    "2" => {
        "riddle" => "What always runs but never walks, often murmurs, never talks, has a bed but never sleeps, has a mouth but never eats?",
        "answer" => "river"
    },
    "3" => {
        "riddle" => "What comes once in a minute, twice in a moment, but never in a thousand years?",
        "answer" => "m"
    },
    "4" => {
        "riddle" => "Voiceless it cries, Wingless flutters, Toothless bites, Mouthless mutters.",
        "answer" => "wind"
    },
    "5" => {
        "riddle" => "Alive without breath, As cold as death; Never thirsty, ever drinking, All in mail never clinking",
        "answer" => "wish"
    },
    "6" => {
        "riddle" => "What has many keys, but can't even open a single door?",
        "answer" => "piano"
    },
    "7" => {
        "riddle" => "What belongs to you, but other people use it more than you?",
        "answer" => "name"
    },
    "8" => {
        "riddle" => "The more you take, the more you leave behind. What am I?",
        "answer" => "footsteps"
    },
}

def set_riddle
riddle = @riddles.values.sample
end

cloud = World.create(setting: Faker::Address.city, description: "a beautiful expanse of white billowy matter.", url: "https://www.airbusnewtalent.com/images/clouds.gif")
glitch = World.create(setting: Faker::Address.city, description: "the worst thing you've ever seen.", url: "https://media.boingboing.net/wp-content/uploads/2015/11/ezgif-1902210988.gif")
World.create(setting: Faker::Address.city, description: "a land of flowing water", url: "https://free-hd-wall-papers.com/images/gif-wallpaper/gif-wallpaper-15.gif" )


World.all.each do |world|
    3.times do 
        riddle = @riddles.values.sample
        world.deities.create(name: Faker::Ancient.god, phrase: Faker::GreekPhilosophers.quote, defeated: false, description: Faker::Superhero.descriptor, riddle: riddle["riddle"], answer: riddle["answer"]).create_core(essence: Faker::Space.constellation)
    end
end
# 15.times do
#   rid = set_riddle
#   deity = Deity.create(name: Faker::Books::Lovecraft.deity, world: World.all.sample, phrase: Faker::GreekPhilosophers.quote, defeated: false, description: Faker::SlackEmoji.emoji, riddle: rid["riddle"], answer: rid["answer"])
#   Core.create(deity_id: deity.id, essence: Faker::Space.constellation)
# end

60.times do
  Citizen.create(name: Faker::Books::Dune.character, world: World.all.sample, phrase: Faker::Books::Dune.saying, description: Faker::Games::ElderScrolls.creature)
end

5.times do
  Spirit.create(name: Faker::Games::Pokemon.name)
end

Spirit.create(name:"Bob", username: "bob")
