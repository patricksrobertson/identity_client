module IdentityClient
  module ApplicationHelper
    def authenticate
      redirect_to '/identity_client/auth/icis' unless current_user
    end

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  end
end
