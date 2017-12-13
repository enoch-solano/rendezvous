Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'sessions/new'
  get 'users/new'

	resources :users
  get '/signup', to: 'users#new'
  root 'events#index'

  patch '/events/:id', to: 'events#attending', as: 'user_attending'
  resources :events

  get 'welcome/index'
end
