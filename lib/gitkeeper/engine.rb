require 'mongoid'
require 'omniauth'
require 'omniauth-github'
require 'omniauth-oauth2'

module Gitkeeper
  class Engine < ::Rails::Engine
    isolate_namespace Gitkeeper
  end
end
