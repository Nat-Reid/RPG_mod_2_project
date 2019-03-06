class Citizen < ApplicationRecord
  belongs_to :world

  validates :name, uniqueness: true
end
