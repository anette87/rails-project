class Product < ApplicationRecord
    belongs_to :category
    has_many :figures

    def self.by_category(category_id)
        where(category: category_id)
    end

    def self.grouped(collection)
        collection.group_by{ |product| product.category.name}
    end 
end
