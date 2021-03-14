class Api::ReviewController < ApplicationController
  def index
    @all_reviews = Review.all
    render "index.json.jb"
  end

  def show
    @review = Review.find_by(id: params["id"])
    render "show.json.jb"
  end
end
