Rails.application.routes.draw do
  
  
  devise_for :users,
   controllers: {
       registrations: 'users/registrations',
       sessions: 'users/sessions',
       passwords: 'users/passwords'
   }
  #devise_scope :user do
     # get 'accountcheck', to: 'devise/passwords#show'
      #end
  
  get 'users/show'
  root 'top#index'
  get 'reservations/index'
  get 'rooms/index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, :only => [:show]
  resources :rooms
  resources :reservations do
      member do
      get 'new_reserve'
      post 'confirm' #new_reserveからform_withでデータが来るのでpost,またストロングパラメータを利用するのでhttpからidをひっぱるのでmember
    end
  end
end
