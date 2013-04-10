module IdentityClient
  class SessionsController < ApplicationController
    def create
      AccessGrant.create_or_update_by_user_and_credentials(user, auth['credentials'])

      session[:user_id] = user.id
      redirect_to '/'
    end

    private

    def user
      @user ||= User.find_by_provider_and_uid(auth['provider'], auth['uid'].to_s) || User.create_with_omniauth(auth)
    end

    def auth
      @auth ||= request.env['omniauth.auth']
    end
  end
end
