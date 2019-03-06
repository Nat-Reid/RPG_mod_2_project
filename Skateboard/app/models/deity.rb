class Deity < ApplicationRecord
  belongs_to :world
  has_one :core
end
