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

  # google omniauth
  get 'google/create'
  get 'google/destroy'
  get 'auth/:provider/callback', to: 'google#create'
  get 'auth/failure', to: redirect('/')
  get 'gsignout', to: 'google#destroy', as: 'gsignout'

  resources :google, only: [:create, :destroy]


end

