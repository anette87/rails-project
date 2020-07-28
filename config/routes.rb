Rails.application.routes.draw do
  # resources :categories
  # resources :products
  # resources :comments
  # resources :user_figures
  # resources :figures
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'sessions#homepage'

  get '/auth/:provider/callback', to: 'sessions#omniauth'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
end
