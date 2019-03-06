class Spirit < ApplicationRecord
  has_many :bodies
  has_many :worlds, through: :bodies
  has_many :cores, through: :bodies

  validates :name, uniqueness: true

end
