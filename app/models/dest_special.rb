class DestSpecial < ApplicationRecord
    belongs_to :destination
    belongs_to :special

    validates :special_id, presence: true, uniqueness: { scope: :destination_id }
end
