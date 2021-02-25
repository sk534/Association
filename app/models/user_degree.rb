class UserDegree < ApplicationRecord
    belongs_to :user
    belongs_to :degree
    accepts_nested_attributes_for :degree
end
