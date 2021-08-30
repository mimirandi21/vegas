class DestRecommendation < ApplicationRecord
    belongs_to :destination
    belongs_to :recommendation

    validates :recommendation_id, presence: true, uniqueness: { scope: :destination_id }
end
