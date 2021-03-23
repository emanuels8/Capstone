class Api::ReviewController < ApplicationController
  def index
    @all_reviews = Review.all

    render "index.json.jb"
  end

  def show
    @review = Review.find_by(id: params["id"])
    render "show.json.jb"
  end

  # @game = Game.find_by(id: params["id"])

  def create
    @review = Review.new(
      user_id: current_user.id,
      game_id: params[:game_id],
      description: params[:description],
      rating: params[:rating],
    )
    if @review.save
      render "show.json.jb"
    else
      render json: { errors: @review.errors.full_messages }, status: 422
    end
  end
end
