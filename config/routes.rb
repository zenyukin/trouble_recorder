Rails.application.routes.draw do
  
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :posts
  
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  get "/mypage", to: "users#mypage"
 
  get "/postmanagers/index", to: "post_managers#index"
  post "/postmanagers", to: "post_managers#create"
  
end
