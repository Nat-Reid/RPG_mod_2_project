class Deity < ApplicationRecord
  belongs_to :world
  has_one :core

  validates :name, uniqueness: {scope: :world}
end
