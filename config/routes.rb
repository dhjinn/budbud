Rails.application.routes.draw do
  devise_for :admins
  devise_for :users


  # resources :users
  resources :admins
  resource :users
  get 'all', to: 'transactions#index', as: 'all'
  get 'new', to: 'transactions#new', as: 'new'
  post '/create', to: 'transactions#create', as: 'create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
