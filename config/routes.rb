Gitkeeper::Engine.routes.draw do
  root to: 'auth#index'

  get '/signout', to: 'auth#destroy'
  get ':provider/callback', to: 'auth#create'
end
