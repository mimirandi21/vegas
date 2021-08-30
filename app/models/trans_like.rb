class TransLike < ApplicationRecord
    belongs_to :transportation 
    belongs_to :like

    validates :like_id, presence: true, uniqueness: { scope: :transportation_id }
end
