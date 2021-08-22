class Like < ApplicationRecord
    has_many :food_likes
    has_many :foods, through: :food_likes
end
