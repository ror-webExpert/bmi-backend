Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'homes/index'
  root "homes#index"
 
  resources :messages do
    member do
        post :edit
      end
  end

  namespace :api do
    namespace :v1 do
      resources :homes do
        collection do
          get :doctor_profile
          get :disease_profile
        end
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
