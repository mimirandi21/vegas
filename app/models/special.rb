class Special < ApplicationRecord
    has_many :food_specials
    has_many :foods, through: :food_specials
end
