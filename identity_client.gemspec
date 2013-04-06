$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "identity_client/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "identity_client"
  s.version     = IdentityClient::VERSION
  s.authors     = ["Patrick Robertson"]
  s.email       = ["patrick@iorahealth.com"]
  s.homepage    = "http://iorahealth.com"
  s.summary     = "quick and dirty client for rails apps on my OAuth provider"
  s.description = "quick and dirty client for rails apps on my OAuth provider"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency  "rails", "~> 3.2.13"
  s.add_dependency 'omniauth'
  s.add_dependency  'omniauth-icis', '~> 0.1'

  s.add_development_dependency "sqlite3"
end
