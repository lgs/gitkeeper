require_dependency "gitkeeper/application_controller"

module Gitkeeper
  class AuthController < ApplicationController
    before_filter :current_user

    def index
    end
  end
end


