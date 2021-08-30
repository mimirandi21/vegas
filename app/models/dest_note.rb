class DestNote < ApplicationRecord
    belongs_to :destination
    belongs_to :note

    validates :note_id, presence: true, uniqueness: { scope: :destination_id }
end
