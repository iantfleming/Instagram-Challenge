Rails.application.routes.draw do
  root "user#index"

  get "/user", to: 'homepage#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
