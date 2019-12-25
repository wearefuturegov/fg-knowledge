class LoginsController < ApplicationController  
    def new
        render layout: "bare"
    end

    def create
        if token = flash[:google_sign_in_token]
            data = GoogleSignIn::Identity.new(token)
            cookies.signed[:user_id] = data.user_id
            redirect_to root_path
        else
            redirect_to login_path
        end
    end
end