Rails.application.routes.draw do
  resources :product_categories
  resources :categories
  devise_for :admins
  root 'products#index'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
