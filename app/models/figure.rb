class Figure < ApplicationRecord
    has_many :comments
    has_many :commenters, through: :comments, source: :user
    has_many :user_figures
    has_many :users, through: :user_figures
    belongs_to :product

    validates :name, presence: true

end
