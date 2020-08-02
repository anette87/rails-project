class UserFiguresController < ApplicationController
    before_action :authentication_required, expect: 

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

    def destroy
        @user_figure = UserFigure.find(params[:id])
        if current_user == @user_figure.user 
            @user_figure.destroy
            flash[:notice] = "Figure removed from your collection."
            redirect_to user_path(@user_figure.user)
        else
            flash[:notice] = "Request not authorized."
            redirect_to user_path(current_user)
        end
    end

    private

    def user_figures_params
        params.require(:user_figure).permit(:figure_id, :user_id)
    end 
end