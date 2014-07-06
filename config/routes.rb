IJURY::Application.routes.draw do

  root to: 'pages#main'


  resources :users
  resources :sessions, only: [:destroy, :create]
  resources :evidences
  get '/test', to: 'pages#test', as: 'test'
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  resources :cases do
    resources :comments do
      resources :votes
    end
  end


end
