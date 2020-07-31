class UserFigure < ApplicationRecord
    belongs_to :user
    belongs_to :figure

    validates :figure_id, presence: true
    validates :user_id, presence: true 
    validates :figure_id, uniqueness: { scope: :user_id, message: "is already in your collection." }

    def product
        figure.product
    end
end
