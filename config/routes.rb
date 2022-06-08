Rails.application.routes.draw do
  get 'readers/new'
  get 'readers/create'
  get '/books', to: 'books#index'
  get '/home' , to: 'pages#home'
  devise_for :users
root 'pages#home'
  resources :books do
    resources :chapters
    resources :readers, only: [:new, :create]
  end
end
