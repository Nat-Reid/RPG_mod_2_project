class Citizen < ApplicationRecord
  belongs_to :world

  validates :name, uniqueness: {scope: :world}
end
