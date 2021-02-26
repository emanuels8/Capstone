class System < ApplicationRecord
  has_many :games, through: :game_systems
  has_many :game_systems
end
