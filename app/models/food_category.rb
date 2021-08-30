class FoodCategory < ApplicationRecord
    belongs_to :food
    belongs_to :category

    validates :category_id, presence: true, uniqueness: { scope: :food_id }
end
