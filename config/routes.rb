Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :bakeries do
    resources :reviews, only: [:new, :create]
    resources :tags, only: [:new, :create, :update]
  end
  get 'bakeries/addtofav/:id', to: "bakeries#update_favourites"

  resources :users
  get 'users/:id/favourites', to: "users#favourites"
  resources :favourites
end
