class Player < ApplicationRecord
  #has_secure_password
  has_many :leagues
  validates :username, uniqueness: true, presence: true, length: { minimum: 3, maximum: 25 }
  validates :email, uniqueness: true, presence: true, length: { maximum: 25 }
end
