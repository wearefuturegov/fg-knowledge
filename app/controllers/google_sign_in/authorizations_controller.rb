require 'securerandom'

class GoogleSignIn::AuthorizationsController < GoogleSignIn::BaseController
  skip_forgery_protection only: :create

  def create
    # restrict ui to offer fg accounts only
    redirect_to login_url(scope: 'openid profile email', state: state, hd: "wearefuturegov.com"),
      flash: { proceed_to: params.require(:proceed_to), state: state }
  end

  private
    def login_url(**params)
      client.auth_code.authorize_url(prompt: 'login', **params)
    end

    def state
      @state ||= SecureRandom.base64(24)
    end
end