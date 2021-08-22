class Recommendation < ApplicationRecord
    has_many :food_recommmendations
    has_many :foods, through: :food_recommendations
end
