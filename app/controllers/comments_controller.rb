class CommentsController < ApplicationController
    before_action :authentication_required

    def new
        @figure = Figure.find(params[:figure_id])
        @comment = Comment.new(figure:@figure, user_id:session[:user_id])
        
    end
    
    def create
        @comment = Comment.new(comment_params)
        if @comment.valid?
            @comment.save
            redirect_to figure_comment_path(@comment.figure, @comment)
        else
            render :new
        end
    end

    def show
        @comment = Comment.find(params[:id])
        if params[:figure_id]
            figure = Figure.find_by(id: params[:figure_id])
            if @comment == nil || @comment.figure != figure
                redirect_to products_path, flash: {alert: "Figure not found. Try Again!"}
            end
        end
    end

    def edit
        @comment = Comment.find(params[:id])      
    end 
    
    def update
        @comment = Comment.find(params[:id])
    
        @comment.update(comment_params)
    
        if @comment.save
          redirect_to figure_comment_path(@comment.figure, @comment)
        else
          render :edit
        end
      end
    
      def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        flash[:notice] = "Comment deleted."
        redirect_to figure_path(@comment.figure)
      end

    private

    def comment_params
        params.require(:comment).permit(:comment, :user_id, :figure_id, )
    end 
end
