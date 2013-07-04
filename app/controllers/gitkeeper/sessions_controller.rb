require_dependency "gitkeeper/application_controller"

module Gitkeeper
  class SessionsController < ApplicationController
    # def create  
    #   raise request.env["omniauth.auth"].to_yaml  
    #   Rails.logger.info "\r\n" + "#{Time.now} " + "auth = #{auth}" + "\r\n"
    # end 
  
    # def new
    #   redirect_to '/auth/#{config['provider']}'
    # end
  
    # binding.pry
    def create
      user_find_or_create_from_auth_hash(request.env['omniauth.auth'])
      redirect_to '/'
    end
  
    def destroy
      session[:user_id] = nil
      redirect_to root_url, :notice => "Signed out!"
    end
  
    protected
    def user_find_or_create_from_auth_hash(auth)
      @user = User.where(nickname: auth['info']['nickname']).first || User.create_with_omniauth(auth)
      session[:user_id] = @user.id.to_s
      current_user = @user
    end
  end
end