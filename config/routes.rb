Gitkeeper::Engine.routes.draw do
  root to: 'auth#index'

  get '/signout', to: 'sessions#destroy'
  get '/auth/:provider/callback', to: 'sessions#create'
end
