Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :machines

  # Defines the root path route ("/")
  root "machines#index"

  namespace :api do
    namespace :v1 do
      resources :machines
    end
  end
end
