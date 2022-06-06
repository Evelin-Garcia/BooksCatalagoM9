Rails.application.routes.draw do
  devise_for :users
  resources :books
  root 'pages#home'
  get '/books', to: 'books#index'
  get '/home' , to: 'pages#home'
end
