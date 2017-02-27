class Showtime < ApplicationRecord
  belongs_to :movie
  belongs_to :auditorium

  validates :showdate, :start_time, :end_time, :tickets_sold, :movie_id, :auditorium_id, :presence => true
  validate :overlap

  def sold_out?()
    self.tickets_sold == self.auditorium.capacity
  end

  def past_date?()
    self.start_time < DateTime.now
  end

  def overlap()
    showtimes = Showtime.where(auditorium_id: self.auditorium_id).where.not(id: self.id)
    if showtimes.size >= 1
      if (showtimes.where("end_time > ?", self.start_time).size >= 1 && showtimes.where("end_time < ?", self.end_time).size >= 1) || (showtimes.where("start_time > ?", self.start_time).size >= 1 && showtimes.where("start_time < ?", self.end_time).size >= 1) || (showtimes.where("start_time < ?", self.start_time).size >= 1 && (showtimes.where("end_time > ?", self.end_time).size >= 1))
          errors.add(:timing_issue, "The start or end time conflicts with an existing showtime. Try again")
      end
    end
  end

end
