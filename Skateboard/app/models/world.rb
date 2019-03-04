class World < ApplicationRecord
  has_many :bodies
  has_many :deitites
  has_many :npcs
  has_many :spirits, through: :bodies
end
