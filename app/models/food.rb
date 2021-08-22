class Food < ApplicationRecord
    has_many :food_categories
    has_many :food_locations
    has_many :food_notes
    has_many :food_recommendations
    has_many :food_specials
    has_many :food_likes

    has_many :categories, through: :food_categories
    has_many :locations, through: :food_locations
    has_many :notes, through: :food_notes
    has_many :recommendations, through: :food_recommendations
    has_many :specials, through: :food_specials
    has_many :likes, through: :food_likes
end
