Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'sessions/new'

  get 'users/new'

	resources :users
	root 'users#index'
  resources :events
  get '/signup', to: 'users#new'

  get 'welcome/index'
end
