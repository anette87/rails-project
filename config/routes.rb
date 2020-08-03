Rails.application.routes.draw do
  
  root 'sessions#homepage'

  resources :categories
  resources :products
  resources :figures
  resources :comments
  resources :user_figures

  get '/auth/:provider/callback', to: 'sessions#omniauth'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'users', to: 'users#index'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  resources :products, only: [:show] do
    resources :figures, only: [:show]
  end
  
  resources :figures, only: [:show] do
    resources :comments, only: [:new, :show]
  end 

  get 'collection/:id', to: 'user_figures#show', as: 'collection'
 
end




