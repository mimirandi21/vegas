class DestLike < ApplicationRecord
    belongs_to :destination
    belongs_to :like 

    validates :like_id, presence: true, uniqueness: { scope: :destination_id }
end
