Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bakeries
  get 'bakeries/addtofav/:id', to: "bakeries#update_favourites"
end
