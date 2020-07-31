Rails.application.routes.draw do
  resources :categories
  resources :products
  resources :figures

  

  resources :comments
  resources :user_figures
  # resources :figures
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



  root 'sessions#homepage'

  get '/auth/:provider/callback', to: 'sessions#omniauth'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  resources :products, only: [:show] do
    resources :figures, only: [:show]
  end
  
  resources :figures, only: [:show] do
    resources :comments, only: [:new, :show]
  end 

  # get 'users/:id/catalog/new', to: 'user_figures#new'
  # post 'users/:id/catalog', to: 'user_figures#create'
  get 'collection/:id', to: 'user_figures#show', as: 'collection'
  # delete 'collection/:id', to: 'user_figures#delete'
end

