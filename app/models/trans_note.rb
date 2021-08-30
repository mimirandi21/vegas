class TransNote < ApplicationRecord
    belongs_to :transportation 
    belongs_to :note

    validates :note_id, presence: true, uniqueness: { scope: :transportation_id }
end
