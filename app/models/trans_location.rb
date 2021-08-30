class TransLocation < ApplicationRecord
    belongs_to :transportation 
    belongs_to :location

    validates :location_id, presence: true, uniqueness: { scope: :transportation_id }
end
