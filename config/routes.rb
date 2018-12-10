Rails.application.routes.draw do
  root 'vm_module#index'
  get "/" => 'users#index'
  resources :users, only:[:new, :create]
  resources :sessions, only:[:new, :create, :destroy]
end
