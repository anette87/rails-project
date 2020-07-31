class ApplicationController < ActionController::Base

    
    def self.current_user(session)
        User.find(session[:user_id])
    end
    
    def logged_in?
        !!session[:user_id]
    end
    
    def loggin_valid #before_action 
    end
    
end
