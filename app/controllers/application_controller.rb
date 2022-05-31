class ApplicationController < ActionController::Base
    def authenticate_user
        return redirect_to root_path if session[:user]
      end
      
      def unauthenticate_user
        return redirect_to login_path unless session[:user]
      end
end
