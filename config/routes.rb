Rails.application.routes.draw do
  resources :blogs
  root 'blogs#index'
  resources :users, only: %i[create new edit show update destroy]
  resources :sessions, only: %i[new create destroy]
end
