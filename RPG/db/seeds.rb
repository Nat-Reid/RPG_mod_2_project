# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Core.destroy_all
Deity.destroy_all
Body.destroy_all
Citizen.destroy_all
World.destroy_all



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
        "answer" => "fish"
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

def deity_descriptions
  [
    "a glorious heavenly being that shines blindingly bright!",
    "a wicked demon surrounded by the hate of all evil that ever was!",
    "a wise deity staring deep in your soul in wait of your own wisdom.",
    "a feeble old figure that smiles with the eyes of an immortal..."
  ]
end

cloud = World.create(name: Faker::Address.city, description: "a beautiful expanse of white billowy matter.", url: "https://www.airbusnewtalent.com/images/clouds.gif")
glitch = World.create(name: Faker::Address.city, description: "the worst thing you've ever seen.", url: "https://media.boingboing.net/wp-content/uploads/2015/11/ezgif-1902210988.gif")
waterfall = World.create(name: Faker::Address.city, description: "a land of flowing water.", url: "https://free-hd-wall-papers.com/images/gif-wallpaper/gif-wallpaper-15.gif" )
underwater = World.create(name: Faker::Address.city, description: "a murky, shimmering expanse.", url: "https://wallpapercave.com/wp/wp2763894.gif" )

World.all.each do |world|
  3.times do
    riddle = @riddles.values.sample
    de = world.deities.create(name: Faker::Ancient.god, phrase: Faker::GreekPhilosophers.quote, defeated: false, description: Faker::Movies::StarWars.wookiee_sentence, riddle: riddle["riddle"], answer: riddle["answer"])
    
    Core.create(essence: Faker::Space.constellation, deity_id: de.id)
  end
end

60.times do
  Citizen.create(name: Faker::Books::Dune.character, world: World.all.sample, phrase: Faker::Books::Dune.saying, description: Faker::Games::ElderScrolls.creature)
end

Spirit.create(name:"Bob", username: "bob")
