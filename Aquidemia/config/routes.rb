Rails.application.routes.draw do
  
  resources :gyms
  # index page / root url
  root 'pages#home', as: 'home'
  
  get 'pages/home'
  
  get 'pages/search'

  get 'pages/favorites'

  get 'pages/about'
  
  get 'auth/:provider/callback', to: 'sessions#create'
  
  get 'logout', to: 'sessions#destroy'
  
  get 'pages/ratings'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
