class Note < ApplicationRecord
    has_many :food_notes
    has_many :foods, through: :food_notes
    has_many :dest_notes
    has_many :destinations, through: :dest_notes
    has_many :trans_notes
    has_many :transporations, through: :trans_notes

    validates :info, presence: true, uniqueness: true
end
