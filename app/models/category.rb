class Category < ApplicationRecord
    has_many :food_categories
    has_many :foods, through: :food_categories
    has_many :dest_categories
    has_many :destinations, through: :dest_categories
    has_many :trans_categories
    has_many :transporations, through: :trans_categories

    validates :category, presence: true, uniqueness: true
end
