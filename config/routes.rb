Rails.application.routes.draw do
  get 'privatekey/authenticate'

  resources :posts

  root 'posts#index'
end
