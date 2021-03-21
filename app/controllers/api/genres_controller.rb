class Api::GenresController < ApplicationController
  def index
    @all_genres = Genre.all
    render "index.json.jb"
  end

  def show
    @genre = Genre.find_by(id: params["id"])
    @survival = @genre.game.all
    @rpg = @genre.game.all
    @single_player = @genre.game.all
    @platform = @genre.game.all
    render "show.json.jb"
  end
end
