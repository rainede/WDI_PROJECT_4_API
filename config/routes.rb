Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :posts
  post 'login', to: 'authentications#login'
  post 'register', to: 'authentications#register'
end
