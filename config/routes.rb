Rails.application.routes.draw do
  devise_for :admins
  root 'admins/products#index'
  match "/admins/products/delete_image/:id" => "admins/products#delete_image", via: :get
  
  namespace :admins do
    namespace :products do
      post 'csv_upload'
    end
    resources :categories
    resources :products
  end

end

