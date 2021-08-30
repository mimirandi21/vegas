class Transportation < ApplicationRecord
    has_many :trans_categories
    has_many :trans_locations
    has_many :trans_notes
    has_many :trans_likes

    has_many :categories, through: :trans_categories
    has_many :locations, through: :trans_locations
    has_many :notes, through: :trans_notes
    has_many :likes, through: :trans_likes

    validates :name, presence: true, uniqueness: true
end
