module IdentityClient
  class AccessGrant < ActiveRecord::Base
    attr_accessible :access_token, :expires_at, :user_id

    belongs_to :user

    def self.create_or_update_by_user_and_credentials(user, credentials)
      attributes = {
        access_token: credentials['token'],
        expires_at:   Time.at(credentials['expires_at'])
      }

      if (grant = AccessGrant.by_user(user))
        grant.update_attributes(attributes)
      else
        grant = user.create_access_grant(attributes)
      end

      grant
    end

    def self.by_user(user)
      AccessGrant.where(user_id: user.id).first
    end
  end
end
