Rails.application.routes.draw do
  root "sessions#create"

  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]

  # get "/user", to: 'user#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
end
