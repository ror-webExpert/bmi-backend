Rails.application.routes.draw do
  get 'homes/index'
  root "homes#index"
 
  resources :messages do
    member do
        post :edit
      end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
