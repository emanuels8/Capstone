class Api::GamesController < ApplicationController
  def index
    @all_games = Game.all
    render "index.json.jb"
  end

  def show
    @genre_name = []
    @review_info = []
    @array = []
    @info = {}
    @genre = Game.find_by(id: params["id"]).game_genre.all.map { |genre|
      @genre_name << genre.genre.name
    }
    @test = Review.where(game_id: params["id"])
    @game = Game.find_by(id: params["id"])
    if Game.first.id == Review.first.game_id
      Review.where(game_id: params["id"]).all.map { |review|
        (@info[:username] = review.user.username)
        (@info[:description] = review.description)
        (@info[:rating] = review.rating)
        @array.push(@info)
        @info = {}
      }
    end

    render "show.json.jb"
  end
end
