Rails.application.routes.draw do
  resources :categories
  resources :products
  resources :comments
  resources :user_figures
  resources :figures
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
