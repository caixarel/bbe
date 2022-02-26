Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bakeries do
    resources :favourites, only: [:create]
  end
  resources :favourites, only: [:destroy]
  #get 'bakeries/addtofav/:id', to: "bakeries#update_favourites"
  get ':id/dashboard', to: 'dashboard#my_dashboard', :as => 'my_dashboard'
end
