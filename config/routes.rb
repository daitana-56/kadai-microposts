Rails.application.routes.draw do
  #TOPページへのルーティング
  root to: 'toppages#index'
  
  #userのルーティング
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  #sessionのルーティング
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  #micropostのルーティング
  resources :microposts, only: [:create, :destroy]
end
