class Api::GamesController < ApplicationController
  def index
    @all_games = Game.all
    @all_genres = Genre.all
    render "index.json.jb"
  end

  def show
    @avg_rating = 0.00
    @genre_name = []
    @review_info = []
    @array = []
    @info = {}
    @genre = Game.find_by(id: params["id"]).game_genres.all.map { |genre|
      @genre_name << genre.genre.name
    }
    @test = Review.where(game_id: params["id"])
    @game = Game.find_by(id: params["id"])

    Review.where(game_id: params["id"]).all.map { |review|
      (@info[:username] = review.user.username)
      (@info[:user_id] = review.user.id)
      (@info[:description] = review.description)
      (@info[:rating] = review.rating)
      @array.push(@info)
      @info = {}
      @avg_rating = (@avg_rating + review.rating)
    }
    @avg_rating = @avg_rating / (@test.length * 1.00)
    @avg_rating = @avg_rating.round(1)

    @survival = Genre.find_by(id: 12).game.all
    @rpg = Genre.find_by(id: 7).game.all
    @single_player = Genre.find_by(id: 9).game.all
    @platform = Genre.find_by(id: 2).game.all

    render "show.json.jb"
  end
end
