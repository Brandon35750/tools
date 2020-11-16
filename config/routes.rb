Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :tools, only: [:index, :show]
  resources :bookings, only: [:new, :create, :update, :edit]
  resources :my_tools
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
