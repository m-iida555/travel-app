Rails.application.routes.draw do
  
  devise_for :users
  root 'top#index'
  get 'reservations/index'
  get 'rooms/index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  
  resources :rooms
  resources :reservations
end
