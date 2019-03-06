class Body < ApplicationRecord
  belongs_to :world
  belongs_to :spirit
  has_many :cores

  validates :name, uniqueness: true
end
