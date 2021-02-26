class Game < ApplicationRecord
  has_many :review
  has_many :game_genre
end
