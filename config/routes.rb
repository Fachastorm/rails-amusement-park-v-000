Rails.application.routes.draw do
    
root 'application#home' 
get '/signin' => 'sessions#new'
resources :sessions, only: [:create, :destroy]
resources :rides, only:[:create]
resources :users, :attractions

end