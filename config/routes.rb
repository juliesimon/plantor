Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show] do
    member do
      get 'dashboard', to: "users#dashboard"
    end
  end

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :plants, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:create, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
