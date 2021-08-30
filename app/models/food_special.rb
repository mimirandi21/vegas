class FoodSpecial < ApplicationRecord
    belongs_to :food 
    belongs_to :special 

    validates :special_id, presence: true, uniqueness: { scope: :food_id }
end
