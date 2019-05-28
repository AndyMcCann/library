Rails.application.routes.draw do
  
  get 'authors/new'
  get 'authors/index'
  get 'homepage/index'
  resources :books
  resources :authors
  get 'login/index'
  root 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

