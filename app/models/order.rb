class Order < ApplicationRecord
  belongs_to :showtime

  validates :name, :email, :credit_card, :expiration, :total, :showtime_id, :presence => true
  validates :credit_card, numericality: { only_integer: true}
  validate :credit_card_length
  validate :expiration_date

  def self.movie_search(criteria)
    orders = Order.all
    by_movie = []
    orders.each do |order|
      movie = order.showtime.movie.title
      if movie == criteria
        by_movie << order
      end
    end
    by_movie
  end

  def update_tickets_sold
    self.showtime.tickets_sold +=1
    self.showtime.save
  end

  def credit_card_length
    if self.credit_card.length != 16
      errors.add(:credit_card, "length must be 16 digits long")
    end
  end

  def expiration_date
    if self.expiration != nil
      if self. expiration < Date.today
        errors.add(:expiration_date, "must be greater than today")
      end
    end
  end


end