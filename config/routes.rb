Rails.application.routes.draw do
  
  root to: 'pages#home'
  devise_for :users
  resources :users do
    resource :profile
  end
  get 'about', to: 'pages#about'
  get 'challenges', to: 'challenges#index'
  get 'challenges/1', to: 'challenges#challenge1'
  get 'challenges/2', to: 'challenges#challenge2'
end
