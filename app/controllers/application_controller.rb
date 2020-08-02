class ApplicationController < ActionController::Base

    
    def current_user #return an object of the current user 
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    helper_method :current_user
    
    def logged_in?
        !!current_user
    end
    
    def authentication_required #before_action 
        if !logged_in?
            redirect_to login_path
        end 
    end  
   
end
