class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :credit_card, null: false
      t.date :expiration, null: false
      t.decimal :total, null: false
      t.integer :showtime_id, null: false

      t.timestamps null: false
    end
  end
end
