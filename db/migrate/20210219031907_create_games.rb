class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.decimal :price, precision: 9, scale: 2
      t.string :cover_art
      # t.string :studio_id

      t.timestamps
    end
  end
end
