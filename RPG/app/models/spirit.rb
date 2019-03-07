class Spirit < ApplicationRecord
  has_many :bodies
  has_many :worlds, through: :bodies
  has_many :cores, through: :bodies

  validates :name, uniqueness: true
  validates :username, uniqueness: true

  def find_body_by_world(world)
    my_bods = self.bodies
    my_world_ids = self.world_ids
    if (my_bods & world.bodies).empty?
      nil
    else
      correct_bods = my_bods & world.bodies
      correct_bods[0]
      #the body that you have on that worlds
    end
  end
end
