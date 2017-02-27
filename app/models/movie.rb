class Movie < ApplicationRecord
  has_many :showtimes

  validates :title, :runtime, :presence => true
  validates :runtime, numericality: { only_integer: true}

end
