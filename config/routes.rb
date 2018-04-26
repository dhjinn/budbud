Rails.application.routes.draw do
  devise_for :admins
  devise_for :users


  # resources :users
  resource :admins
  resource :users
  get 'all', to: 'transactions#index', as: 'all'
  get 'new', to: 'transactions#new', as: 'new'
  post '/create', to: 'transactions#create', as: 'create'
  patch 'delete', to: 'transactions#delete', as: 'delete'
  patch 'reimburse', to: 'transactions#reimburse', as: 'reimburse'
  patch 'update1', to: 'admins#update1', as: 'update1'
  patch 'update2', to: 'admins#update2', as: 'update2'
  patch 'update3', to: 'admins#update3', as: 'update3'
  patch 'update4', to: 'admins#update4', as: 'update4'
  patch 'update5', to: 'admins#update5', as: 'update5'
  patch 'update6', to: 'admins#update6', as: 'update6'
  patch 'update7', to: 'admins#update7', as: 'update7'
  patch 'update8', to: 'admins#update8', as: 'update8'
  patch 'update9', to: 'admins#update9', as: 'update9'
  patch 'update10', to: 'admins#update10', as: 'update10'
  patch 'update11', to: 'admins#update11', as: 'update11'
  patch 'update12', to: 'admins#update12', as: 'update12'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
