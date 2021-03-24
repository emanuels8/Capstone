class AddImageToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :image2, :string
  end
end
