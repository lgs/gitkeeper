Rails.application.config.middleware.use OmniAuth::Builder do
  #require 'openid/store/filesystem' 
  #provider :openid, :store => OpenID::Store::Filesystem.new('/tmp')

  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
end

