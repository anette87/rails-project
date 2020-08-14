class Figure < ApplicationRecord
    has_many :comments
    has_many :commenters, through: :comments, source: :user
    has_many :user_figures
    has_many :users, through: :user_figures
    belongs_to :product

    validates :name, presence: true

    def self.search_by_name(figure_name) 
        where('name LIKE ?', "%#{figure_name}%")#LIKE ? let you search for name same or similar to the user input
    end

    
    # def self.search_by_name(figure_name) 
    #     where(name: figure_name)
    # end
     

end
