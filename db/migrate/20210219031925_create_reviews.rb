class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :game_id
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
