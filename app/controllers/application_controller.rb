class ApplicationController < ActionController::Base
    include SessionsHelper
    include UsersHelper
    
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_path
      end
    end
end
