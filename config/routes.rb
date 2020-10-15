Rails.application.routes.draw do
  devise_for :users
  get "welcome", to: 'pages#home'
  root to: 'pages#home'

  resources :posts, except: [:show]
  resources :families, only: [:show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
