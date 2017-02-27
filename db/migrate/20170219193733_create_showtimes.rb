class CreateShowtimes < ActiveRecord::Migration[5.0]
  def change
    create_table :showtimes do |t|
      t.date :showdate, null: false
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.integer :tickets_sold, null: false
      t.integer :movie_id, null: false
      t.integer :auditorium_id, null: false

      t.timestamps null: false
    end
  end
end
