class FoodNote < ApplicationRecord
    belongs_to :food 
    belongs_to :note 
end
