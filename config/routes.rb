Rails.application.routes.draw do
  resources :users, only: [:show] do
    member do
      get 'dashboard', to: "users#dashboard"
    end
  end

  devise_for :users
  root to: 'pages#home'
  resources :plants, only: [:index, :show, :new, :create, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
