Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get 'welcome', to: 'pages#home'
  root to: 'pages#home'

  resources :posts, except: [:show]
  resources :families, except: [:delete] do
    member do
      post :add_member
    end
    resources :members, except: [:index]
  end

  resources :gazettes, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
