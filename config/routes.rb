Rails.application.routes.draw do
  scope :api do
    resources :users, only: [:index, :show]
    resources :posts
    resources :messages
    resources :text_messages
    post 'login', to: 'authentications#login'
    post 'register', to: 'authentications#register'
    get '/auth/twitter/callback', to: 'sessions#create'
    mount ActionCable.server => '/cable'
  end
end
