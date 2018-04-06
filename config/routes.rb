Rails.application.routes.draw do
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  get 'pages/about'    
  get 'pages/lookup'
  post "/pages/lookup" => 'pages/lookup'
  root to: 'visitors#index'
  devise_for :users
  resources :users
  
end
