Rails.application.routes.draw do
  
  # index page / root url
  root 'pages#home', as: 'home'
  
  get 'pages/home'
  
  get 'pages/search'

  get 'pages/favorites'

  get 'pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
