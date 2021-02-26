class User < ApplicationRecord
  has_many :review
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
