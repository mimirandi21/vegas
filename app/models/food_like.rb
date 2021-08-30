class FoodLike < ApplicationRecord
    belongs_to :food
    belongs_to :like

    validates :like_id, presence: true, uniqueness: { scope: :food_id }
end
