require_dependency "gitkeeper/application_controller"

module Gitkeeper
  class HomeController < ApplicationController
    before_filter :current_user

    def index
    end
  end
end


