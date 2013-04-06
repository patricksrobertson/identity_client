IdentityClient::Engine.routes.draw do
  get "/auth/:provider/callback" => "sessions#create", as: :login
end
