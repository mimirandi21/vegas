class DestLocation < ApplicationRecord
    belongs_to :destination
    belongs_to :location 

    validates :location_id, presence: true, uniqueness: { scope: :destination_id }
end
