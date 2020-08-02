class SessionsController < ApplicationController
    before_action :authentication_required, except: [:homepage, :new, :create]

    
    def homepage
        if logged_in?
            redirect_to user_path(current_user)
        end   
    end

    def new
    end

    def create
        user = User.find_by_email(params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:message] = "Invalid credentials. Please try again."
            redirect_to login_path
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to root_path
    end

    def omniauth  #log users in with omniauth
        user = User.create_from_omniauth(auth)
        if user.valid?
            session[:user_id] = user.id
            redirect_to root_path
        else
            flash[:message] = user.errors.full_messages.join(", ")
            redirect_to login_path
        end
    end

    private
    def auth
        request.env['omniauth.auth']
    end

end