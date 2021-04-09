Rails.application.routes.draw do
  resources :product_categories
  resources :categories
  resources :products
  devise_for :admins
  root 'products#index'

  namespace :products do
    post 'csv_upload'
  end

end

