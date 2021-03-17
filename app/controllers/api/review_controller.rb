class Api::ReviewController < ApplicationController
  def index
    @all_reviews = Review.all
    render "index.json.jb"
  end

  def show
    @review = Review.find_by(id: params["id"])
    render "show.json.jb"
  end

  def create
    @review = Review.new(
      user_id: params[:user_id],
      game_id: params[:game_id],
      description: params[:description],
      rating: params[:rating],
    )
    @review.save
    render "show.json.jb"
  end
end
