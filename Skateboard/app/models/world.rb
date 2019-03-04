class World < ApplicationRecord
  has_many :bodies
  has_many :deities
  has_many :citizens
  has_many :spirits, through: :bodies

  validates :setting, uniqueness: true
end
