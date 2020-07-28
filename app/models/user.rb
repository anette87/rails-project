class User < ApplicationRecord
    has_many :comments
    has_many :commented_figures, through: :comments, source: :figure 
    has_many :user_figures
    has_many :figures, through: :user_figures

end
