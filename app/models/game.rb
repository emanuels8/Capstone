class Game < ApplicationRecord
  has_many :review
  has_many :game_genres
  has_many :genres, through: :game_genres
end
