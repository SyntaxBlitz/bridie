Rails.application.routes.draw do
  get 'privatekey/authenticate'

  resources :posts do
    resources :comments
  end

  root 'posts#index'
end
