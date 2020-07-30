class FiguresController < ApplicationController

    def show
        @figure = Figure.find(params[:id])
        if params[:product_id]
            product = Product.find_by(id: params[:product_id])
            if @figure == nil || @figure.product != product
                redirect_to products_path, flash: {alert: "Figure not found. Try Again!"}
            end
      end
      
    end 

end

