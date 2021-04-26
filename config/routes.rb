Rails.application.routes.draw do
  resources :homes, only: [:index, :show]
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
  end

end

