class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.integer :runtime, null: false
      t.decimal :price, null: false, precision: 10, scale: 2

      t.timestamps null: false
    end
  end
end
