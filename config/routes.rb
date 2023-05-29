Rails.application.routes.draw do
  devise_for :accounts

  get "u/:username" => "public#profile", as: :profile

  resources :communities do
    resources :posts
  end 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :subscriptions
  resources :comments, only: [:create]

  root to: "public#index"
end
