Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :tools, only: [:index, :show, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only:[] do
    member do
      patch :confirm
      patch :refuse
    end
  end
  resources :my_tools
  resource :profile, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
