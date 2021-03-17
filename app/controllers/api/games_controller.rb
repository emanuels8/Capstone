class Api::GamesController < ApplicationController
  def index
    @all_games = Game.all
    render "index.json.jb"
  end

  def show
    @game = Game.find_by(id: params["id"])
    @review_info = Game.find_by(id: params["id"]).review

    @review_usernames = Review.all.map { |review|
      if @game.id == review.game_id
        review.user.username
      end
    }
    @review_usernames = @review_usernames.compact
    render "show.json.jb"
  end
end
