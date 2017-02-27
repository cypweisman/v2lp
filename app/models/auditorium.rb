class Auditorium < ApplicationRecord
  has_many :showtimes

  validates :room, :capacity, :presence => true, numericality: { only_integer: true }
  validates :room, uniqueness: true

end
