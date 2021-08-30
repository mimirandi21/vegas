class FoodRecommendation < ApplicationRecord
    belongs_to :food 
    belongs_to :recommendation 
    
    validates :recommendation_id, presence: true, uniqueness: { scope: :food_id }
end
