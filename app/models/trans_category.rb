class TransCategory < ApplicationRecord
    belongs_to :transportation 
    belongs_to :category

    validates :category_id, presence: true, uniqueness: { scope: :transportation_id }
end
