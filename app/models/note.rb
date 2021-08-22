class Note < ApplicationRecord
    has_many :food_notes
    has_many :foods, through: :food_notes
end
