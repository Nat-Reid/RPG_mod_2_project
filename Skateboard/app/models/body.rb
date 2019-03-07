class Body < ApplicationRecord
  belongs_to :world
  belongs_to :spirit
  has_many :cores

  validates :name, uniqueness: true

  def has_all_cores?(world)
    world.cores.where("body_id = ?", self.id) == world.cores
  end

  def defeat_deity(deity)
    core = deity.core
    self.cores << core if core.world == self.world
    deity.update(defeated: true)
  end

end
