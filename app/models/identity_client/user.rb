module IdentityClient
  class User < ActiveRecord::Base
    has_one :access_grant

    def self.create_with_omniauth(auth)
      create! do |user|
        user.provider = auth["provider"]
        user.uid = auth["uid"]
        user.name = "#{auth["info"]['first_name']} #{auth['info']['last_name']}"
      end
    end
  end
end
