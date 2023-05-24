Rails.application.routes.draw do
  devise_for :accounts
  resources :communities do
    resources :posts
  end 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: "public#index"
end
