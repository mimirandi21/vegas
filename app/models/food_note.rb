class FoodNote < ApplicationRecord
    belongs_to :food 
    belongs_to :note 

    validates :note_id, presence: true, uniqueness: { scope: :food_id }
end
