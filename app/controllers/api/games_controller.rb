class Api::GamesController < ApplicationController
  def index
    @all_games = Game.all
    render "index.json.jb"
  end
end

#name ,price cover_art
