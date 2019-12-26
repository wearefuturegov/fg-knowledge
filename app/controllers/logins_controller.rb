class LoginsController < ApplicationController  
    def new
        render layout: "bare"
    end

    def create
        if token = flash[:google_sign_in_token]
            data = GoogleSignIn::Identity.new(token)
            if data.hosted_domain === "wearefuturegov.com"
                cookies.signed[:user_id] = data.user_id
                redirect_to root_path
            else
                redirect_to login_path
            end
        else
            redirect_to login_path
        end
    end
end