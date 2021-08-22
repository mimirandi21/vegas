class FoodRecommendation < ApplicationRecord
    belongs_to :food 
    belongs_to :recommendation 
    
end
