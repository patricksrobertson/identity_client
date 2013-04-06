Rails.application.routes.draw do
  root to: 'home#show'

  mount IdentityClient::Engine => "/identity_client"
end
