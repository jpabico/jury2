IJURY::Application.routes.draw do

  root to: 'pages#dashboard'

  resources :ballots
  resources :users
  resources :sessions, only: [:destroy, :create]
  resources :evidences
  get '/test', to: 'pages#test', as: 'test'
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  resources :cases do
    resources :comments
  end
  resources :votes



end
