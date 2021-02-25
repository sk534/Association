class User < ApplicationRecord
    has_many :user_degrees
    has_many :degrees, through: :user_degrees
    accepts_nested_attributes_for :degrees
    accepts_nested_attributes_for :user_degrees#, reject_if: :all_blank, allow_destroy: true
    validates_presence_of :name
end
