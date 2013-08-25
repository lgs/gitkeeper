require_dependency "gitkeeper/application_controller"

module Gitkeeper
  class AuthController < ApplicationController
    before_filter :current_user

    def index
    end

    # binding.pry
    def create
      # raise request.env["omniauth.auth"].to_yaml  
      # Rails.logger.info "\r\n" + "#{Time.now} " + "auth = #{auth}" + "\r\n"
      user_find_or_create_from_auth_hash(request.env['omniauth.auth'])
      redirect_to '/auth'
    end
  
    def destroy
      session[:user_id] = nil
      redirect_to '/auth'
    end
  
    protected
    def user_find_or_create_from_auth_hash(auth)
      binding.pry
      user = User.where(nickname: auth['info']['nickname']).first || User.create_with_omniauth(auth)
      session[:user_id] = user.id.to_s
    end

  end
end


  
