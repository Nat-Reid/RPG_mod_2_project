class Spirit < ApplicationRecord
  has_many :bodies
  has_many :worlds, through: :bodies
end
