Rails.application.routes.draw do
  
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :posts
  
  get "/login", to: "sessions#new"
  get "/login/:id/page", to: "sessions#login_user_page"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
end
