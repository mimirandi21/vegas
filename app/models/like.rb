class Like < ApplicationRecord
    has_many :food_likes
    has_many :foods, through: :food_likes
    has_many :dest_likes
    has_many :destinations, through: :dest_likes
    has_many :trans_likes
    has_many :transporations, through: :trans_likes

    validates :info, presence: true, uniqueness: true
end
