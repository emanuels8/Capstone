class AddRatingToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :rating, :decimal, precision: 9, scale: 1
  end
end
