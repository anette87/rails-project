class UserFiguresController < ApplicationController

    def create
        @user_figure = UserFigure.new(user_figures_params)
        if @user_figure.valid? 
            @user_figure.save
            redirect_to product_figure_path(@user_figure.product, @user_figure.figure), flash: {alert: "Figure Added To Your Collection"}
        else
            @figure = @user_figure.figure
            render :"figures/show"
        end 
    end 

    def show 
        @user = User.find(params[:id])
    end
    
    def destroy
        @user_figure = UserFigure.find(params[:id])
        @user_figure.destroy
        flash[:notice] = "Figure removed from your collection."
        redirect_to collection_path(@user_figure.user)
    end

    private

    def user_figures_params
        params.require(:user_figure).permit(:figure_id, :user_id)
    end 
end