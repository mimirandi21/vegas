class Special < ApplicationRecord
    has_many :food_specials
    has_many :foods, through: :food_specials
    has_many :dest_specials
    has_many :destinations, through: :dest_specials

    validates :info, presence: true, uniqueness: true
end
