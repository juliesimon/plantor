Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show, :dashboard, :update] do
    member do
      get 'dashboard', to: "users#dashboard"
    end
  end

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :plants, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [ :create ]
  end
  resources :bookings, only: [] do
      resources :reviews, only: [ :new, :create ]
  end
  patch 'bookings/:booking_id/accept', to: "bookings#accept", as: :accept_booking
  patch 'bookings/:booking_id/decline', to: "bookings#decline", as: :decline_booking

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
