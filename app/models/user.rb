class User < ApplicationRecord
  has_many :reviews
  has_secure_password
  validates :email, presence: true, uniqueness: true

  def average_rating
    reviews.pluck(:rating).reduce(:+) / reviews.length.to_f
  end
end
