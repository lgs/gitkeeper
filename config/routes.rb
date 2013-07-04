Gitkeeper::Engine.routes.draw do

  root 'auth#index'

  # get '/signin', to: 'sessions#new'
  get '/signout', to: 'sessions#destroy'
   # get '/auth/:provider', to: 'errors#error'
#  get '/auth/:provider/callback', to: 'sessions#create', as: 'signin'

  get ':provider/callback', to: 'auth#callback'
end
