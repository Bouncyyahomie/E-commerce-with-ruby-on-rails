Rails.application.routes.draw do
  resources :homes, only: [:index, :show]
  resources :orders
  root "homes#index"
  
  devise_for :admins
  match "/admins/products/delete_image/:id" => "admins/products#delete_image", via: :get
  namespace :admins do
    namespace :products do
      post 'csv_upload'
    end
  end

  namespace :admins do
    resources :products
    resources :categories
    resources :orders 
  end

end

