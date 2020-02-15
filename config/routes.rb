Rails.application.routes.draw do
  #TOPページへのルーティング
  root to: 'toppages#index'
  
  #userのルーティング
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end
