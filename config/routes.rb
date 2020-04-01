Rails.application.routes.draw do
  root 'users#index'

  resources :users
  resources :hash_tags, only: %i[show]
  resource :session, only: %i[new create destroy]
  resources :questions, except: %i[show new index]
end
