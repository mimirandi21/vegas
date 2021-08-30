class Destination < ApplicationRecord
    has_many :dest_categories
    has_many :dest_locations
    has_many :dest_notes
    has_many :dest_recommendations
    has_many :dest_specials
    has_many :dest_likes

    has_many :categories, through: :dest_categories
    has_many :locations, through: :dest_locations
    has_many :notes, through: :dest_notes
    has_many :recommendations, through: :dest_recommendations
    has_many :specials, through: :dest_specials
    has_many :likes, through: :dest_likes

    validates :name, presence: true, uniqueness: true
end
