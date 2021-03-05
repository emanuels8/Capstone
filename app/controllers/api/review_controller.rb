class Api::ReviewController < ApplicationController
  def index
    @all_reviews = Review.all
    render "index.json.jb"
  end
end
