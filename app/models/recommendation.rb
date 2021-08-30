class Recommendation < ApplicationRecord
    has_many :food_recommmendations
    has_many :foods, through: :food_recommendations
    has_many :dest_recommmendations
    has_many :destinations, through: :dest_recommendations

    validates :info, presence: true, uniqueness: true
end
