class RemovePriceFromMovie < ActiveRecord::Migration[5.0]
  def change
    remove_column :movies, :price
  end
end
