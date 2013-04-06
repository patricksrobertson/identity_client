module IdentityClient
  class ApplicationController < ActionController::Base
    def authenticate
      redirect_to :login unless current_user
    end

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  end
end
