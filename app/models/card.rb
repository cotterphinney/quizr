class Card < ApplicationRecord
    belongs_to :group
    has_one :user, through: :group
end
