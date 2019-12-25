class ApplicationController < ActionController::Base

    private
    
    def gate_access
        unless cookies.signed[:user_id]
            redirect_to login_path
        end  
    end
end
