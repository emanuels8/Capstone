class Genre < ApplicationRecord
  has_many :game_genre
  has_many :game, through: :game_genre
end
