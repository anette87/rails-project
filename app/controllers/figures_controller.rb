class FiguresController < ApplicationController
    before_action :authentication_required

    def index
        @figures = Figure.all
    end 
    
    
    def show
        @figure = Figure.find(params[:id])
        if params[:product_id]
            product = Product.find_by(id: params[:product_id])
            if @figure == nil || @figure.product != product
                redirect_to products_path, flash: {alert: "Figure not found. Try Again!"}
            end
        end
        @user_figure = UserFigure.find_or_initialize_by(figure: @figure, user: current_user)   
    end 

end

