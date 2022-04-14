class Player < ApplicationRecord
    has_many: leagues
    validates: username, uniqueness: true, presence: true, length: {minimum: 3, maximum: 25}
    validates: email, uniqueness: true, presence: true, length: { minimum: 3, maximum: 25}, unqueness: true
end
