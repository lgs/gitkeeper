Gitkeeper::Engine.routes.draw do
  # get '/signin' => 'sessions#new', to: :signin
  get '/signout' => 'sessions#destroy', to: :signout
  get '/auth/:provider/callback', to: 'sessions#create'
  # get '/auth/:provider', to: 'errors#error'
end
