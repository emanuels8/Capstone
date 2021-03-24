class Api::UsersController < ApplicationController
  def index
    @username = User.second.username
    @game_cover_art = Game.find_by(id: 1).cover_art
    @second_game_cover_art = Game.find_by(id: 2).cover_art
    @third_game_cover_art = Game.find_by(id: 3).cover_art
    @fourth_game_cover_art = Game.find_by(id: 4).cover_art
  end

  def show
    @user = User.find_by(id: params["id"])
  end

  def create
    user = User.new(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
