class Api::GamesController < ApplicationController
  def index
    @all_games = Game.all
    render "index.json.jb"
  end

  def show
    @game = Game.find_by(id: params["id"])
    @user = User.find_by(id: params["id"]).review
    @username = User.find_by(id: params["id"]).username
    @review = Game.find_by(id: params["id"]).review
    render "show.json.jb"
  end
end
