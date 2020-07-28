class Product < ApplicationRecord
    belongs_to :category
    has_many :figures
end
