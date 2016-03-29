Rails.application.routes.draw do
  root 'home#index'
  get 'send_all', to: 'home#send_all'
  get 'emails', to: 'users#index'
  resources :users, except: :index
end
