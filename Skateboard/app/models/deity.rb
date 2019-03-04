class Deity < ApplicationRecord
  belongs_to :world

  validates :name, uniqueness: true
end
