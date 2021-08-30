class Location < ApplicationRecord
    has_many :food_locations
    has_many :foods, through: :food_locations
    has_many :dest_locations
    has_many :destinations, through: :dest_locations
    has_many :trans_locations
    has_many :transporations, through: :trans_locations

    validates :location, presence: true, uniqueness: true
end
