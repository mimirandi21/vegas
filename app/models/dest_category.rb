class DestCategory < ApplicationRecord
    belongs_to :destination
    belongs_to :category

    validates :category_id, presence: true, uniqueness: { scope: :destination_id }
end
