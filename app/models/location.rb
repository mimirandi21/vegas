class Location < ApplicationRecord
    has_many :food_locations
    has_many :foods, through: :food_locations
end
