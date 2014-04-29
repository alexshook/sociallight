Project2::Application.routes.draw do
  root to: 'auctions#index'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: 'auctions#index'
  get 'logout', to: 'sessions#destroy'

  resources :users do
    resources :messages
  end

  resources :bids
  resources :categories
  resources :auctions


end
