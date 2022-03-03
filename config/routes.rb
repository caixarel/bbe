Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :bakeries do
    resources :reviews, only: [:new, :create]
  end
  get 'bakeries/addtofav/:id', to: "bakeries#update_favourites"

  resources :users
end
