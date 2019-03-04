class Body < ApplicationRecord
  belongs_to :world
  belongs_to :spirit

  validates :name, uniqueness: true
end
