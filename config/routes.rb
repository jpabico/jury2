IJURY::Application.routes.draw do

<<<<<<< HEAD
  root to: 'pages#main'

  resources :users
  resources :sessions, only: [:destroy, :create]
  get '/test', to: 'pages#test', as: 'test'

  resources :cases do
    resources :comments do
      resources :votes
    end
  end

=======

>>>>>>> 9b843ee346dcbc3c38edea4130de573b7b3b1b6d
end
