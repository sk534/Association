class Degree < ApplicationRecord
    has_many :user_degrees
    has_many :users, through: :user_degrees
end
