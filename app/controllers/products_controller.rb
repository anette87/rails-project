class ProductsController < ApplicationController
    before_action :authentication_required

    def index
        @categories = Category.all
        if !params[:category].blank?
            products_collection = Product.by_category(params[:category])
        else
            products_collection = Product.all
        end
        @products = Product.grouped(products_collection)
        
    end

    def show
        @product = Product.find(params[:id])
        @figures = Figure.where(product: params[:id])
    end
end

