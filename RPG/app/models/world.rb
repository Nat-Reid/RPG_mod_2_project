class World < ApplicationRecord
 has_many :bodies
 has_many :deities
 has_many :citizens
 has_many :spirits, through: :bodies
 has_many :cores, through: :deities

 validates :name, uniqueness: true

  def inhabitants
    i = []
    self.citizens.each{|citizen| i << citizen}
    self.bodies.each{|body| i << body}
    self.deities.each{|deity| i << deity}
    i.shuffle!
  end

  def active?
    self.deities.any? { |d| !d.defeated }
  end
end
