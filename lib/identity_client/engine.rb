require 'omniauth'
require 'omniauth-icis'

module IdentityClient
  class Engine < ::Rails::Engine
    isolate_namespace IdentityClient


    initializer 'omniauth-icis' do
      config.middleware.use OmniAuth::Builder do
        provider :icis, ENV['CLIENT_ID'], ENV['CLIENT_SECRET']
      end
    end

    initializer  "myengine.load_helpers" do
      ActiveSupport.on_load(:action_controller) do
        include IdentityClient::ApplicationHelper
      end
    end
  end
end
