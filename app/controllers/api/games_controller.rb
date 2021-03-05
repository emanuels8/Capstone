class Api::GamesController < ApplicationController
  def index
    @all_games = Game.all
    render "index.json.jb"
  end

  def show
    @game = Game.find_by(id: params["id"])
    render "show.json.jb"
  end
end

#name ,price cover_art
