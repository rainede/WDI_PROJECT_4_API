Rails.application.routes.draw do
  post 'login', to: 'authentications#login'
  post 'register', to: 'authentications#register'

end
