class FoodLocation < ApplicationRecord
    belongs_to :food 
    belongs_to :location 

    validates :location_id, presence: true, uniqueness: { scope: :food_id }
end
