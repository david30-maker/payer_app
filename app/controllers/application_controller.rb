class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def current_user
       User.find(session[:user_id]) if session[:user_id]
    end

    def require_login
        unless session[:user_id]
            flash[:errors] = ["You must be logged in to access this section"]
            redirect_to users_path
        end
    end
end
