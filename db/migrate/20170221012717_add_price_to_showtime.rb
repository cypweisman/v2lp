class AddPriceToShowtime < ActiveRecord::Migration[5.0]
  def change
    add_column :showtimes, :price, :decimal, precision: 10, scale: 2
  end
end
