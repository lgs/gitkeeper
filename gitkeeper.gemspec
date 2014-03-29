$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "gitkeeper/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "gitkeeper"
  s.version     = Gitkeeper::VERSION
  s.authors     = ["Luca G. Soave"]
  s.email       = ["luca.soave@gmail.com"]
  s.homepage    = "https://github.com/lgs/gitkeeper"
  s.summary     = "Sign in with Github engine"
  s.description = "An engine for Rails 4.1.0, MongoID, OmniAuth, to Sign in with Github"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.0.rc2"
  s.add_dependency "omniauth", "~> 1.2.1"
  s.add_dependency "omniauth-github", "~> 1.1.1"
  s.add_dependency "omniauth-oauth2", "~> 1.1.2"
  # s.add_dependency "mongoid", "~> 4.0.0"
end

