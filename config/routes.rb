Rails.application.routes.draw do
  resources :messages
  scope :api do
    resources :users, only: [:index, :show]
    resources :posts
    resources :text_messages
    post 'login', to: 'authentications#login'
    post 'register', to: 'authentications#register'
    get '/auth/twitter/callback', to: 'sessions#create'
    mount ActionCable.server => '/cable'
  end
end
